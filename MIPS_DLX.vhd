library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_DLX is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );

  port   (
     CLOCK_50            : in  std_logic;
	  SW                  : in std_logic_vector(2 DOWNTO 0);
	  KEY						 : in std_logic_vector(3 DOWNTO 0);
	  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	  barramentoEndout : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	 
  );
end entity;


architecture arch_name of MIPS_DLX is
	
	SIGNAL clk : std_logic;
	SIGNAL hex : std_logic_vector(23 downto 0);
	SIGNAL saida_PC : std_logic_vector(31 DOWNTO 0);
	SIGNAL barramentoEnd : std_logic_vector(31 DOWNTO 0);

  
begin
	  
--      CLOCK_50: in std_logic;
--		saida_ULA: out STD_LOGIC_VECTOR(dataWidth-1 downto 0);
--		saida_pc : out std_logic_vector((dataWidth -1) downto 0)

							
	hex <= saida_PC(23 downto 0) WHEN SW = "000" ELSE
		    barramentoEnd(23 downto 0) WHEN SW = "001" ELSE 
			 x"000000";
				  
	edge: entity work.edgeDetector
			port map(
			  clk    => CLOCK_50,
			  entrada => (not KEY(0)),
			  saida   => clk
			);	
			
	FD : entity work.FluxoDados
				port map (
					clk => clk,
					saida_pc => saida_PC,
					saida_ULA => barramentoEnd		
				);
												
				
	hex_0 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(3 downto 0),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX0 
				
				);
	hex_1 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(7 downto 4),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX1 
				
				);
	hex_2 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(11 downto 8),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX2 
				
				);
	hex_3 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(15 downto 12),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX3 
				
				);
	hex_4 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(19 downto 16),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX4 
				
				);
	hex_5 : entity work.conversorHex7Seg
				port map(
					 dadoHex => hex(23 downto 20),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX5 
				
				);
				
	
							
	  barramentoEndout <= barramentoEnd;
	  

end architecture;


