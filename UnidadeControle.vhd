-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControle is

  port   (
--  porta de entrada
	 opCode  			:  in  std_logic_vector(5 downto 0);
	 
--  portas de saída
    palavraControle  :  out std_logic_vector(7 downto 0);
	 ULAop 				:  out std_logic_vector(2 downto 0)
  );
  
end entity;


architecture arch_name of UnidadeControle is

-- Pontos de controle
	alias mux_pc    		: std_logic is palavraControle(0);
	alias mux_RtRd			: std_logic is palavraControle(1);
	alias escritaReg	 	: std_logic is palavraControle(2);
	alias mux_RtImed		: std_logic is palavraControle(3);
	alias mux_ULAMem		: std_logic is palavraControle(4);
	alias beq_mux		   : std_logic is palavraControle(5);
	alias leituraMem		: std_logic is palavraControle(6);
	alias escritaMem		: std_logic is palavraControle(7);  


-- tipos das instruções
	
-- instruções tipo R                                    opCode
	constant tipoR		: std_logic_vector(5 downto 0) := "000000";
-- add  
-- sub 
-- or	
-- and	
-- slt
	
-- instruções tipo I                                    opCode
	constant lw 		: std_logic_vector(5 downto 0) := "100011";
	constant sw			: std_logic_vector(5 downto 0) := "101011";
	constant beq		: std_logic_vector(5 downto 0) := "000100";
	constant ori		: std_logic_vector(5 downto 0) := "001101";
	constant lui		: std_logic_vector(5 downto 0) := "001111";
	
-- instruções tipo J                                    opCode
	constant jmp		: std_logic_vector(5 downto 0) := "000010";

	
	begin		
  
--	Função	    ULAop
--	LW ou SW	     000
--	BEQ           001
--	TIPO R	     010
--	ORI	        011
-- LUI           100
  
	ULAop  <=    "000" when opcode = lw or opcode = sw else
					 "001" when opcode = beq else 
					 "011" when opcode = ori else
					 "100" when opcode = lui else
					 "010" ;
						
-- Habilita a escrita no registador quando ocorre qualquer instução do tipo R ou LW ou ORI ou LUI						
	escritaReg  <= '1' when (opCode = tipoR) or (opcode = lw) or (opcode = ori) or opcode = lui else '0';
	
-- Seleciona a saida 1 do mux(Rt/Rd) quando ocorre uma instrução do tipo R, caso contraio, seleciona a saída 0					
	mux_RtRd		<= '1' when (opCode = tipoR) else '0';
	
-- Seleciona a saida 1 do mux(Rt/imediato) quando ocorre uma instrução LW ou SW ou ORI ou LUI, caso contraio, seleciona a saída 0
	mux_RtImed	<= '1' when (opCode = lw or opCode = sw or opCode = ori or opcode = lui) else '0';
	
-- Seleciona a saida 1 do mux(ULA/mem) quando ocorre uma instrução do LW, caso contraio, seleciona a saída 0						
	mux_ULAMem	<= '1' when (opCode = lw) else '0';
	
-- Ponto de controle BEQ = 1 quando ocorre uma instrução BEQ										
	beq_mux		<= '1' when (opCode = beq) else '0';
	
-- Habilita a leitura da memoria quando ocorre uma instução LW										
	leituraMem	<= '1' when (opCode = lw) else '0';

-- Habilita a escrita na memoria quando ocorre uma instução SW						
	escritaMem	<= '1' when (opCode = sw) else '0';
	
-- Seleciona a saida 1 do mux([PC+4,BEQ]/Jmp) quando ocorre uma instrução jmp, caso contraio, seleciona a saída 0						
	mux_pc <= '1' when (opCode = jmp) else '0';

end architecture;