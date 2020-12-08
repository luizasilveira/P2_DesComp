-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity somaConstante is
    generic
    (
	 -- Total de bits da entrada e saída e da constante
        larguraDados : natural := 32;
        constante : natural := 4
    );
    port
    (
	 -- porta de entrada
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  
	 -- porta de saída
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somaConstante is
-- soma o valor de entrada com o valor da constante e salva no vetor de saída
    begin
        saida <= std_logic_vector(unsigned(entrada) + constante);
end architecture;