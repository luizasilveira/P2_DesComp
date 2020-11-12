library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_1bit is
    port
    (
      entradaA, entradaB, Cin:  in STD_LOGIC;
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida, Cout:    out STD_LOGIC
    );
end entity;

architecture comportamento of ULA_1bit is
  

   signal soma 		:STD_LOGIC;
	signal Sand 		:STD_LOGIC;
	signal Sor 			:STD_LOGIC;

    begin
      soma <= (entradaA xor entradaB) xor Cin;
		Sand <= (entradaA and entradaB );
		Sor <= (entradaA or entradaB );
		
      --subtracao <= STD_LOGIC((entradaA) - (entradaB));

      saida <= soma when (seletor = "10") else
					Sand when (seletor = "00") else
					Sor  when (seletor = "01") else
					'0';
					
      Cout <=  '1'  when (seletor = "10") and 
					((entradaA = '1'and entradaB = '1') or
	            (entradaA = '1' and Cin = '1') or
					(entradaB = '1' and Cin = '1')) else
					'0';
		



end architecture;