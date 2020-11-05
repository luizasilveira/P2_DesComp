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
		saida_A: out std_logic_vector((dataWidth -1) downto 0);
		saida_B: out std_logic_vector((dataWidth -1) downto 0)
    );
	 
end entity;


architecture comportamento of FluxoDados is

	SIGNAL PC_IN : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL PC_OUT : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL Instrucao : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL ULAentradaA : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL ULAentradaB : std_logic_vector(addrWidth-1 downto 0);
	SIGNAL ULA_OUT :  std_logic_vector(addrWidth-1 downto 0);
	SIGNAL flag_zero :  std_logic;
	signal palavraControle : std_logic_vector(3 downto 0);
	
	alias operacao : std_logic_vector(2 downto 0) is palavraControle(3 downto 1);
	alias HabEscrReg : std_logic is palavraControle(0);
	
	alias opCode   : std_logic_vector(5 downto 0) is Instrucao(31 downto 26); -- opcode [31-26]
	alias rs   		: std_logic_vector(4 DOWNTO 0) is Instrucao(25 DOWNTO 21); -- regA   [25-21]
	alias rt   		: std_logic_vector(4 DOWNTO 0) is Instrucao(20 DOWNTO 16); -- regB   [20-16]
	alias rd   		: std_logic_vector(4 DOWNTO 0) is Instrucao(15 DOWNTO 11); -- regC   [15-11]
   alias shamt    : STD_LOGIC_VECTOR(4 DOWNTO 0) IS Instrucao(10 DOWNTO 6);  -- shamt  [10-6]
   alias func    : STD_LOGIC_VECTOR(5 DOWNTO 0) IS Instrucao(5 DOWNTO 0);   -- funct  [5-0]

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
					DIN => PC_IN,
					DOUT => PC_Out,
					ENABLE => '1',
					RST => '0'
			 );
			
	-- incrementa 1		
	inc: entity work.somaConstante
            port map (
					entrada => PC_Out,
					saida => PC_IN
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
					 enderecoC => rd,
					 dadoEscritaC => ULA_OUT,
					 escreveC => HabEscrReg, 
					 saidaA => ULAentradaA,
					 saidaB => ULAentradaB
			);
				
	ULA : entity work.ULA 
				generic map(
					larguraDados => dataWidth
				)
				port map (
					entradaA => ULAentradaA,
					entradaB => ULAentradaB,
					saida => ULA_OUT,
					seletor => operacao,
					flagZero => flag_zero
				);	
				
		UC: entity work.UnidadeControle
          port map (
					clk => CLOCK_50,
					opCode => opCode,
					func => func,
					palavraControle => palavraControle
			 );
			 
	saida_ULA <= ULA_OUT;
	saida_ROM <= Instrucao;
	saida_A <= ULAentradaA;
	saida_B <= ULAentradaB;
	
end architecture;