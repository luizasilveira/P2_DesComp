library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControle is
  port   (

    clk  				:  in  std_logic;
	 opCode  			:  in  std_logic_vector(5 downto 0);
	 func 				:  in  std_logic_vector(5 downto 0);
    palavraControle  :  out std_logic_vector(10 downto 0)
  );
end entity;


architecture arch_name of UnidadeControle is


	alias mux_pc    		: std_logic is palavraControle(0);
	alias mux_RtRd			: std_logic is palavraControle(1);
	alias escritaReg	 	: std_logic is palavraControle(2);
	alias mux_RtImed		: std_logic is palavraControle(3);
	alias operacao 		: std_logic_vector(2 downto 0) is palavraControle(6 downto 4);
	alias mux_ULAMem		: std_logic is palavraControle(7);
	alias sel_beq			: std_logic is palavraControle(8);
	alias leituraMem		: std_logic is palavraControle(9);
	alias escritaMem		: std_logic is palavraControle(10);  


	-- tipos das instruções
	constant tipoR		: std_logic_vector(5 downto 0) := "000000";

	-- instruções tipo R
	constant func_add : std_logic_vector(5 downto 0) := "100000";
   constant func_sub : std_logic_vector(5 downto 0) := "100010";
	constant func_or	: std_logic_vector(5 downto 0) := "100100";
	constant func_and	: std_logic_vector(5 downto 0) := "100101";
	constant func_slt	: std_logic_vector(5 downto 0) := "101010";
	
	-- instruções tipo I
	constant lw 		: std_logic_vector(5 downto 0) := "100011";
	constant sw			: std_logic_vector(5 downto 0) := "101011";
	constant beq		: std_logic_vector(5 downto 0) := "000100";

	
  begin		
  
	escritaReg  <= '1' when (opCode = tipoR) else '0';
	
	operacao 	<= "000" when (opCode = tipoR and func = func_add) else
						"001" when (opCode = tipoR and func = func_sub) else
						"010" when (opCode = tipoR and func = func_or) else
						"011" when (opCode = tipoR and func = func_and) else
						"100" when (opCode = tipoR and func = func_slt) else
						"000";
						
	mux_RtRd		<= '1' when (opCode = tipoR) else '0';

	mux_RtImed	<= '1' when (opCode = lw or opCode = sw) else '0';
						
	mux_ULAMem	<= '1' when (opCode = lw) else '0';
						
	sel_beq		<= '1' when (opCode = beq) else '0';
						
	leituraMem	<= '1' when (opCode = lw) else '0';
	
	escritaMem	<= '1' when (opCode = sw) else '0';

end architecture;