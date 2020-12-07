-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY somadorGenerico IS

-- Total de bits do somador
    GENERIC (
        larguraDados : NATURAL := 32
    );
    PORT (
-- portas de entrada
        entradaA, entradaB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
		  
-- porta de saída
        saida              : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF somadorGenerico IS

-- a saída recebe a soma dos valores da entradaA e da entradaB
BEGIN
    saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
END ARCHITECTURE;