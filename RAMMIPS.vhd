-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAMMIPS IS
   generic (
	-- Total de bits das entradas e saidas e dos endereços da RAM
          dataWidth: natural := 32;
          addrWidth: natural := 32;
          memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port ( 
	-- portas de entrada e saída
			 clk      : IN  STD_LOGIC;
          Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado_in  : in std_logic_vector(dataWidth-1 downto 0);
          Dado_out : out std_logic_vector(dataWidth-1 downto 0);
          we : in std_logic := '0'
        );
end entity;

architecture assincrona OF RAMMIPS IS
-- Build a 2-D array type for the RAM
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

-- Declare the RAM signal
  signal memRAM: blocoMemoria;
--  Caso queira inicializar a RAM (para testes):
--  attribute ram_init_file : string;
--  attribute ram_init_file of memRAM:
--  signal is "RAMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

-- salva o dado no endereço da RAM se a flag we for ativada na subida do clock
begin

  -- Ajusta o enderecamento para o acesso de 32 bits.
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);

  process(clk)
  begin
      if(rising_edge(clk)) then
          if(we = '1') then
              memRAM(to_integer(unsigned(EnderecoLocal))) <= Dado_in;
          end if;
      end if;
  end process;

  -- A leitura deve ser sempre assincrona:
  Dado_out <= memRAM(to_integer(unsigned(EnderecoLocal)));

end architecture;