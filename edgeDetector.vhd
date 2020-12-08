-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edgeDetector is

     Port (
			-- portas de entrada
			clk     : in  STD_LOGIC;
         entrada : in  STD_LOGIC;
			
			-- porta de saída
         saida   : out STD_LOGIC
	  );
	  
end entity;

-- arquitetura da borda de subida do clock
architecture bordaSubida of edgeDetector is

	 -- sinal de saída
    signal saidaQ : STD_LOGIC;
	 
	 -- verifica se está na borda de subida do clock
	 begin
	   process(clk)
	   begin
			if rising_edge(clk) then
				saidaQ <= entrada;
			end if;
	   end process;
		
	 saida <= entrada and (not saidaQ);
		
end  architecture bordaSubida;

-- arquitetura da borda de descida do clock
architecture bordaDescida of edgeDetector is

	 -- sinal de saída
    signal saidaQ : STD_LOGIC;
	 
	 -- verifica se está na borda de descida do clock
	 begin
		process(clk)
		begin
			if rising_edge(clk) then
				saidaQ <= entrada;
         end if;
		end process;
		
	 saida <= (not entrada) and saidaQ;
	 
end  architecture bordaDescida;