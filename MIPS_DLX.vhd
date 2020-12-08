library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_DLX is

  port   (
     CLOCK_50            : in  std_logic;
	  SW                  : in std_logic_vector(2 DOWNTO 0);
	  KEY						 : in std_logic_vector(3 DOWNTO 0);
	  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	  barramentoEndout : out STD_LOGIC_VECTOR(31 DOWNTO 0)	 
  );
  
end entity;


architecture arch_name of MIPS_DLX is

-- Sinais	
	SIGNAL clk : std_logic;
	SIGNAL hex : std_logic_vector(23 downto 0);
	SIGNAL saida_PC : std_logic_vector(31 DOWNTO 0);
	SIGNAL barramentoEnd : std_logic_vector(31 DOWNTO 0);

  
begin
	  
-- Saida do HEX	  
	hex <= saida_PC(23 downto 0) WHEN SW = "000" ELSE
		    barramentoEnd(23 downto 0) WHEN SW = "001" ELSE 
			 x"000000";
			 
-- Edge detector				  
	edge: entity work.edgeDetector
			port map(
			  clk    => CLOCK_50,
			  entrada => (not KEY(0)),
			  saida   => clk
			);	
			
-- Fluxo de dados	
	FD : entity work.FluxoDados
				port map (
					clk => clk,
					saida_pc => saida_PC,
					saida_ULA => barramentoEnd		
				);
												
-- HEX0				
	hex_0 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(3 downto 0),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                saida7seg => HEX0 
				
				);
-- HEX1				
	hex_1 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(7 downto 4),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                saida7seg => HEX1 
				
				);
-- HEX2				
	hex_2 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(11 downto 8),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX2 
				
				);
-- HEX3				
	hex_3 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(15 downto 12),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                saida7seg => HEX3 
				
				);
-- HEX4			
	hex_4 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(19 downto 16),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                saida7seg => HEX4 
				
				);
-- HEX5				
	hex_5 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(23 downto 20),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                saida7seg => HEX5 
				
				);
				
-- Saída de teste							
	barramentoEndout <= barramentoEnd;
	  

end architecture;


