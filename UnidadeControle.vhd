library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControle is
  port   (

    clk  :  in  std_logic;
	 opCode  :  in  std_logic_vector(5 downto 0);
	 func :  in  std_logic_vector(5 downto 0);
    palavraControle  :  out std_logic_vector(3 downto 0)
  );
end entity;


architecture arch_name of UnidadeControle is

  alias operacao : std_logic_vector(2 downto 0) is palavraControle(3 downto 1);
  alias escritaReg : std_logic is palavraControle(0);
  
  
--            		        add   	sub  		
--    		 operacao	   1		 0			
--           escritaReg	   1	    1      

  begin		
	escritaReg <= '1';
	operacao <=  "000" when (func = "100000") else
					 "001" when (func = "100010") else
					 "000";

end architecture;