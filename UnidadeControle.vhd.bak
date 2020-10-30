library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeControle is
  port   (
    -- Input ports
    clk  :  in  std_logic;
	 opCode  :  in  std_logic_vector(5 downto 0);
	 funct   :  in  std_logic_vector(5 downto 0);
    -- Output ports
    palavraControle  :  out std_logic_vector(1 downto 0)
  );
end entity;


architecture arch_name of UnidadeControle is

-- aliases para saida
  alias operacao : std_logic is palavraControle(1);
  alias escritaReg3 : std_logic is palavraControle(0);
  
-- opCodes disponiveis
  constant ADD : std_logic := '1';
  constant SUB : std_logic := '0';
   

  begin		 
	
	 escritaReg3 <= '1' when opCode = "000000" else '0';
	 operacao <= ADD when opCode = "000000" AND funct = 6x"20" else
					 SUB when opCode = "000000" AND funct = 6x"22" else
					 '0';
	 
end architecture;