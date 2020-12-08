-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_1bit is
    port
    (
	 
		--portas de entrada
      entradaA, entradaB, Cin:  in STD_LOGIC;
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
		
		-- portas de saída
      saida, Cout:    out STD_LOGIC
    );
end entity;

architecture comportamento of ULA_1bit is
  
-- sinais que instanciam o tamanho das possíveis operações da ULA
   signal soma 		:STD_LOGIC;
	signal Sand 		:STD_LOGIC;
	signal Sor 			:STD_LOGIC;

    begin
	 
-- operações com as entradas A e B da ULA de cada um dos sinais
      soma <= (entradaA xor entradaB) xor Cin;
		Sand <= (entradaA and entradaB );
		Sor <= (entradaA or entradaB );
      --subtracao <= STD_LOGIC((entradaA) - (entradaB));

-- instancia a saída da ULA com o resultado da operação escolhida pelo seletor
      saida <= soma when (seletor = "10") else
					Sand when (seletor = "00") else
					Sor  when (seletor = "01") else
					'0';

-- instancia o carry out quando a operação for de soma e pelo menos uma das entradas e/ou o carry in tiver valor 1		
      Cout <=  '1'  when (seletor = "10") and 
					((entradaA = '1'and entradaB = '1') or
	            (entradaA = '1' and Cin = '1') or
					(entradaB = '1' and Cin = '1')) else
					'0';


end architecture;