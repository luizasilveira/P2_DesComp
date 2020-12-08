-- referências: modelos VHDL da matéria de Design de Computadores Insper 2020.2 - professor Paulo Santos 
 
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY muxGenerico2x1 IS
    -- Total de bits das entradas e saidas
    GENERIC (
        larguraDados : NATURAL := 8
    );
    PORT (
	 -- portas de entrada
        entradaA_MUX, entradaB_MUX : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        seletor_MUX                : IN STD_LOGIC;
		  
	 -- porta de saída
        saida_MUX                  : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF muxGenerico2x1 IS
BEGIN
-- se o seletor for acionado, seleciona a entrada B, senão, seleciona a entrada A como saída
    saida_MUX <= entradaB_MUX WHEN (seletor_MUX = '1') ELSE
        entradaA_MUX;
END ARCHITECTURE;