-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY estendeSinalGenerico IS
    GENERIC (
		  -- largura dos dados de entrada e de saída
        larguraDadoEntrada : NATURAL := 8;
        larguraDadoSaida   : NATURAL := 8
    );
    PORT (
        -- Input ports
        estendeSinal_IN : IN STD_LOGIC_VECTOR(larguraDadoEntrada - 1 DOWNTO 0);
		  
        -- Output ports
        estendeSinal_OUT : OUT STD_LOGIC_VECTOR(larguraDadoSaida - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF estendeSinalGenerico IS

-- o sinal de saída é 1 se o sinal de entrada for 1, caso contrário, é 0
BEGIN
    PROCESS (estendeSinal_IN) IS
    BEGIN
        IF (estendeSinal_IN(larguraDadoEntrada - 1) = '1') THEN
            estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '1') & estendeSinal_IN;
        ELSE
            estendeSinal_OUT <= (larguraDadoSaida - 1 DOWNTO larguraDadoEntrada => '0') & estendeSinal_IN;
        END IF;
    END PROCESS;
END ARCHITECTURE;