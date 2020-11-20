-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FluxoDados is

    generic (
		-- Total de bits das entradas e saidas
		dataWidth: 			natural := 32;
      addrWidth: 			natural := 32;
		memoryAddrWidth:  natural := 6;
	   larguraEndBancoRegs: natural := 5
    );
	 
    port (
		-- portas de entrada
      CLOCK_50: in std_logic;
		saida_ULA: out STD_LOGIC_VECTOR(dataWidth-1 downto 0);
		saida_ROM: OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0);
		entrada_ulaA: out std_logic_vector((dataWidth -1) downto 0);
		entrada_ulaB: out std_logic_vector((dataWidth -1) downto 0);
		saida_pc : out std_logic_vector((dataWidth -1) downto 0);
		entradaA_rs : out std_logic_vector(4 DOWNTO 0);
		entradaB_rt : out std_logic_vector(4 DOWNTO 0);
		entradaC_rd : out std_logic_vector(4 DOWNTO 0);
		dado_escrito_rd: out std_logic_vector(31 DOWNTO 0)
    );
	 
end entity;


architecture comportamento of FluxoDados is


	SIGNAL PC_OUT : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL Instrucao : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL ULAentradaA : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL mux_ula_in : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL ULA_OUT :  std_logic_vector(addrWidth-1 downto 0);
	SIGNAL flag_zero :  std_logic;
	signal palavraControle : std_logic_vector(7 downto 0);
	signal mux_reg_out : std_logic_vector(4 downto 0);
	signal mux_ula_out : std_logic_vector(addrWidth-1 downto 0);
	signal mux_pc_out : std_logic_vector(addrWidth-1 downto 0);
	signal mux_ULAMem_out : std_logic_vector(addrWidth-1 downto 0);
	signal mux_BEQ_out : std_logic_vector(addrWidth-1 downto 0);
	signal estende_out : std_logic_vector(addrWidth-1 downto 0);
	signal inc_out : std_logic_vector(addrWidth-1 downto 0);
	signal soma_out : std_logic_vector(addrWidth-1 downto 0);
	signal mem_out : std_logic_vector(addrWidth-1 downto 0);
	signal ulaop : std_logic_vector(2 downto 0);
	signal operacao 		: std_logic_vector(2 downto 0);
	
	
	alias mux_pc    		: std_logic is palavraControle(0);
	alias mux_RtRd			: std_logic is palavraControle(1);
	alias escritaReg	 	: std_logic is palavraControle(2);
	alias mux_RtImed		: std_logic is palavraControle(3);
	alias mux_ULAMem		: std_logic is palavraControle(4);
	alias sel_beq			: std_logic is palavraControle(5);
	alias leituraMem		: std_logic is palavraControle(6);
	alias escritaMem		: std_logic is palavraControle(7);  
	
	alias opCode   : std_logic_vector(5 downto 0) is Instrucao(31 downto 26); -- opcode [31-26]
	alias rs   		: std_logic_vector(4 DOWNTO 0) is Instrucao(25 DOWNTO 21); -- regA   [25-21]
	alias rt   		: std_logic_vector(4 DOWNTO 0) is Instrucao(20 DOWNTO 16); -- regB   [20-16]
	alias rd   		: std_logic_vector(4 DOWNTO 0) is Instrucao(15 DOWNTO 11); -- regC   [15-11]
   alias shamt    : STD_LOGIC_VECTOR(4 DOWNTO 0) IS Instrucao(10 DOWNTO 6);  -- shamt  [10-6]
   alias func     : STD_LOGIC_VECTOR(5 DOWNTO 0) IS Instrucao(5 DOWNTO 0);   -- funct  [5-0]
   alias imedI    : STD_LOGIC_VECTOR(15 DOWNTO 0) IS instrucao(15 DOWNTO 0);
   alias imedJ  : STD_LOGIC_VECTOR(25 DOWNTO 0) IS instrucao(25 DOWNTO 0);
	begin
	
	-- ROM	
	ROM: entity work.ROMMIPS generic map (addrWidth => addrWidth, dataWidth => dataWidth )
           port map (
					clk => CLOCK_50,
					Endereco => PC_OUT,
					Dado => Instrucao
			  );
		
	-- program counter
	PC: entity work.registradorGenerico 
			generic map(
				larguraDados  => addrWidth
			)
          port map (
					clk => CLOCK_50,
					DIN => mux_pc_out,
					DOUT => PC_Out,
					ENABLE => '1',
					RST => '0'
			 );
			
	-- incrementa 1		
	inc: entity work.somaConstante
            port map (
					entrada => PC_Out,
					saida => inc_out
				);
				
	Registradores : entity work.bancoRegistradores
				 generic map (
					 larguraDados => dataWidth,
					 larguraEndBancoRegs => larguraEndBancoRegs
				 )
				 port map ( 
					 clk => CLOCK_50,
					 enderecoA => rs,
					 enderecoB => rt,
					 enderecoC => mux_reg_out,
					 dadoEscritaC => mux_ULAMem_out,
					 escreveC => escritaReg, 
					 saidaA => ULAentradaA,
					 saidaB => mux_ula_in
			);
				
--	ULA : entity work.ULA 
--				generic map(
--					larguraDados => dataWidth
--				)
--				port map (
--					entradaA => ULAentradaA,
--					entradaB => mux_ula_out,
--					saida => ULA_OUT,
--					seletor => operacao,
--					flagZero => flag_zero
--				);	
--      entradaA, entradaB:  in STD_LOGIC_VECTOR(31 downto 0);
--      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
--      resultado: STD_LOGIC_VECTOR(31 downto 0);
--		ZERO : out STD_LOGIC;
--    );
	ULA32 : entity work.ULA_32bit 
				port map (
					entradaA => ULAentradaA,
					entradaB => mux_ula_out,
					resultado => ULA_OUT,
					seletor => operacao,
					ZERO => flag_zero
				);					
	UC: entity work.UnidadeControle
		 port map (
				opCode => opCode,
				ULAop => ulaop,
				palavraControle => palavraControle
		 );

	UC_ULA: entity work.UnidadeControleULA
		 port map (
				func => func,
				ULAop => ulaop,
				ULActrl => operacao
		 );		 

	MUXPC: entity work.muxGenerico2x1
			  generic map (
					larguraDados => addrWidth
			  ) 
			  port map (
					entradaA_MUX => mux_BEQ_out,
					entradaB_MUX => soma_out(31 downto 28) & imedJ & "00",
					seletor_MUX  => mux_pc,
					saida_MUX  => mux_pc_out
		  	  );
			  
	MUX_Reg: entity work.muxGenerico2x1
			  generic map (
					larguraDados => 5
			  ) 
			  port map (
					entradaA_MUX => rt ,
					entradaB_MUX => rd ,
					seletor_MUX  => mux_RtRd,
					saida_MUX  => mux_reg_out
		  	  );
			  
	MUX_ULA: entity work.muxGenerico2x1
			  generic map (
					larguraDados => addrWidth
			  ) 
			  port map (
					entradaA_MUX => mux_ula_in,
					entradaB_MUX => estende_out ,
					seletor_MUX  => mux_RtImed ,
					saida_MUX  => mux_ula_out
		  	  );
			  

	EstSinal: entity work.estendeSinalGenerico
		  generic map (
				larguraDadoEntrada => 16,
				larguraDadoSaida => 32
		  ) 
		  port map (
				estendeSinal_IN => imedI,
				estendeSinal_OUT => estende_out 

		  );			  

	soma: entity work.somadorGenerico
			 generic map (
					larguraDados => addrWidth
			  ) 
		port map (
			entradaA => inc_out,
			entradaB => estende_out(29 DOWNTO 0) & "00",
			saida => soma_out
		);
		
	MUX_BEQ: entity work.muxGenerico2x1
			  generic map (
					larguraDados => addrWidth
			  ) 
			  port map (
					entradaA_MUX => inc_out,
					entradaB_MUX => soma_out ,
					seletor_MUX  => sel_beq and flag_zero,
					saida_MUX  => mux_BEQ_out
		  	  );
	MUX_Mem: entity work.muxGenerico2x1
			  generic map (
					larguraDados => addrWidth
			  ) 
			  port map (
					entradaA_MUX => ULA_OUT,
					entradaB_MUX => mem_out ,
					seletor_MUX  => mux_ULAMem,
					saida_MUX  => mux_ULAMem_out
		  	  );
			 
	RAM: entity work.RAMMIPS 
			generic map(
				dataWidth  => addrWidth,
				addrWidth  => addrWidth
			)
          port map (
					clk => CLOCK_50,
					Endereco => ULA_OUT,
					Dado_in => mux_ula_in,
					Dado_out => mem_out,
					we => escritaMem
			 );			 
		  
			 
	saida_ULA <= ULA_OUT;
	saida_ROM <= Instrucao;
	entrada_ulaA <= ULAentradaA;
	entrada_ulaB <= mux_ula_out;
	saida_pc <= PC_Out;
	entradaA_rs <= rs;
	entradaB_rt<= rt;
	entradaC_rd<= mux_reg_out;
	dado_escrito_rd <= mux_ULAMem_out;
	
end architecture;