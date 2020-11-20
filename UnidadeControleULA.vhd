library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControleULA is
  port   (
	 func 				:  in  std_logic_vector(5 downto 0);
	 ULAop 				:  in std_logic_vector(1 downto 0);
    ULActrl  			:  out std_logic_vector(2 downto 0)
	 
  );
end entity;


architecture arch_name of UnidadeControleULA is
 
	-- tipos das instruções
	constant tipoR		: std_logic_vector(5 downto 0) := "000000";

	-- instruções tipo R
	constant func_add : std_logic_vector(5 downto 0) := "100000";
   constant func_sub : std_logic_vector(5 downto 0) := "100010";
	constant func_or	: std_logic_vector(5 downto 0) := "100101";
	constant func_and	: std_logic_vector(5 downto 0) := "100100";
	constant func_slt	: std_logic_vector(5 downto 0) := "101010";
	
	-- instruções tipo I
	constant lw 		: std_logic_vector(5 downto 0) := "100011";
	constant sw			: std_logic_vector(5 downto 0) := "101011";
	constant beq		: std_logic_vector(5 downto 0) := "000100";

	
  begin		
  
	ULActrl <= "000" when ULAop = "10" and func = func_and else
				  "001" when ULAop = "10" and func = func_or else
				  "010" when ULAop = "00" or (ULAop = "10" and func = func_add) else
				  "110" when ULAop = "01" or (ULAop = "10" and func = func_sub)  else
				  "111" when ULAop = "10" and func = func_slt else "011";

end architecture;