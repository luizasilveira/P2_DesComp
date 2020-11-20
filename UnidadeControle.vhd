library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControle is
  port   (

	 opCode  			:  in  std_logic_vector(5 downto 0);
    palavraControle  :  out std_logic_vector(7 downto 0);
	 ULAop 				:  out std_logic_vector(1 downto 0)
  );
end entity;


architecture arch_name of UnidadeControle is


	alias mux_pc    		: std_logic is palavraControle(0);
	alias mux_RtRd			: std_logic is palavraControle(1);
	alias escritaReg	 	: std_logic is palavraControle(2);
	alias mux_RtImed		: std_logic is palavraControle(3);
	alias mux_ULAMem		: std_logic is palavraControle(4);
	alias sel_beq			: std_logic is palavraControle(5);
	alias leituraMem		: std_logic is palavraControle(6);
	alias escritaMem		: std_logic is palavraControle(7);  


	-- tipos das instruções
	constant tipoR		: std_logic_vector(5 downto 0) := "000000";
	
	-- instruções tipo I
	constant lw 		: std_logic_vector(5 downto 0) := "100011";
	constant sw			: std_logic_vector(5 downto 0) := "101011";
	constant beq		: std_logic_vector(5 downto 0) := "000100";

	
  begin		
  
	ULAop       <= "00" when opcode = lw or opcode = sw else
						"01" when opcode = beq else
						"10" ;
						
	escritaReg  <= '1' when (opCode = tipoR) or (opcode = lw) else '0';
	
						
	mux_RtRd		<= '1' when (opCode = tipoR) else '0';

	mux_RtImed	<= '1' when (opCode = lw or opCode = sw) else '0';
						
	mux_ULAMem	<= '1' when (opCode = lw) else '0';
						
	sel_beq		<= '1' when (opCode = beq) else '0';
						
	leituraMem	<= '1' when (opCode = lw) else '0';
	
	escritaMem	<= '1' when (opCode = sw) else '0';

end architecture;