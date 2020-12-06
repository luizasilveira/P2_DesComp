library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControleULA is
  port   (
	 func 				:  in  std_logic_vector(5 downto 0);
	 ULAop 				:  in std_logic_vector(2 downto 0);
    ULActrl  			:  out std_logic_vector(2 downto 0)	 
  );
end entity;


architecture arch_name of UnidadeControleULA is
 
	-- funct das instruções do tipo R
	constant func_add : std_logic_vector(5 downto 0) := "100000";
   constant func_sub : std_logic_vector(5 downto 0) := "100010";
	constant func_or	: std_logic_vector(5 downto 0) := "100101";
	constant func_and	: std_logic_vector(5 downto 0) := "100100";
	constant func_slt	: std_logic_vector(5 downto 0) := "101010";
	
	
   begin	
		 
--	Função	    ULActrl
--	AND	         000
--	OR  ou ORI     001
--	ADD ou AND	   010
-- LUI            100
--	SUB ou BEQ	   110
--	SLT	         111 
	
	ULActrl <= "000" when ULAop = "010" and func = func_and else
				  "001" when ULAop = "011" or (ULAop = "010" and func = func_or) else
				  "010" when ULAop = "000" or (ULAop = "010" and func = func_add) else
				  "100" when ULAop = "100" else
				  "110" when ULAop = "001" or (ULAop = "010" and func = func_sub)  else
				  "111" when ULAop = "010" and func = func_slt else "011";

end architecture;