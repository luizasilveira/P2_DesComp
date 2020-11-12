library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_32bit is
    port
    (
      entradaA, entradaB:  in STD_LOGIC_VECTOR(31 downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      resultado: out STD_LOGIC_VECTOR(31 downto 0);
		ZERO : out STD_LOGIC
    );
end entity;

architecture comportamento of ULA_32bit is
	 constant valorZero : std_logic_vector(31 downto 0) := (others => '0');
	 signal Cout: std_logic_vector(31 downto 0);
	 signal slt : std_logic_vector(31 downto 0);
	 signal V   : std_logic; 
	 signal saida: std_logic_vector(31 downto 0);
	 signal seletor_1bit: std_logic_vector(1 downto 0);
	 signal sigEntradaB : std_logic_vector(31 downto 0);
	 

    begin
	 
	 seletor_1bit <= "00" when seletor = "000" else
	 "01" when seletor = "001" else
	 "10" when seletor = "010" and seletor = "110" else
	 "11";
		
	 sigEntradaB <= not(entradaB) when seletor = "110" else
						entradaB;
	 
	 V   <= (not(entradaA(31)) and (not(entradaB(31))) and saida(31)) or (entradaA(31) and entradaB(31) and (not(saida(31))));
	 slt <= "0000000000000000000000000000000" & (saida(31) xor V);
	 resultado <= slt when seletor = "111" else saida;
	 ZERO <= '1' when unsigned(saida) = unsigned(valorZero) else '0';
	 
	 ULA0 : entity work.ULA_1bit 
		port map (
			entradaA => entradaA(0) ,
			entradaB => sigEntradaB(0),
			Cin => '0',
			seletor => seletor_1bit ,
			saida => saida(0),
			Cout => Cout(0)
	      );
			
    ULA1 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(1) ,
					entradaB => sigEntradaB(1),
					Cin => Cout(0),
					seletor => seletor_1bit,
					saida => saida(1),
					Cout => Cout(1)		
				);	
    ULA2 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(2) ,
					entradaB => sigEntradaB(2),
					Cin => Cout(1),
					seletor => seletor_1bit,
					saida => saida(2),
					Cout => Cout(2)		
				);	
				
    ULA3 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(3) ,
					entradaB => sigEntradaB(3),
					Cin => Cout(2),
					seletor => seletor_1bit,
					saida => saida(3),
					Cout => Cout(3)		
				);	
    ULA4 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(4) ,
					entradaB => sigEntradaB(4),
					Cin => Cout(3),
					seletor => seletor_1bit,
					saida => saida(4),
					Cout => Cout(4)		
				);	
				
    ULA5 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(5) ,
					entradaB => sigEntradaB(5),
					Cin => Cout(4),
					seletor => seletor_1bit,
					saida => saida(5),
					Cout => Cout(5)		
				);					
				
    ULA6 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(6) ,
					entradaB => sigEntradaB(6),
					Cin => Cout(5),
					seletor => seletor_1bit,
					saida => saida(6),
					Cout => Cout(6)		
				);	

    ULA7 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(7) ,
					entradaB => sigEntradaB(7),
					Cin => Cout(6),
					seletor => seletor_1bit,
					saida => saida(7),
					Cout => Cout(7)		
				);	

    ULA8 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(8) ,
					entradaB => sigEntradaB(8),
					Cin => Cout(7),
					seletor => seletor_1bit,
					saida => saida(8),
					Cout => Cout(8)		
				);	

    ULA9 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(9) ,
					entradaB => sigEntradaB(9),
					Cin => Cout(8),
					seletor => seletor_1bit,
					saida => saida(9),
					Cout => Cout(9)		
				);	

    ULA10 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(10) ,
					entradaB => sigEntradaB(10),
					Cin => Cout(9),
					seletor => seletor_1bit,
					saida => saida(10),
					Cout => Cout(10)		
				);	

    ULA11 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(11) ,
					entradaB => sigEntradaB(11),
					Cin => Cout(10),
					seletor => seletor_1bit,
					saida => saida(11),
					Cout => Cout(11)		
				);	

    ULA12 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(12) ,
					entradaB => sigEntradaB(12),
					Cin => Cout(11),
					seletor => seletor_1bit,
					saida => saida(12),
					Cout => Cout(12)		
				);	

    ULA13 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(13) ,
					entradaB => sigEntradaB(13),
					Cin => Cout(12),
					seletor => seletor_1bit,
					saida => saida(13),
					Cout => Cout(13)		
				);	

    ULA14 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(14) ,
					entradaB => sigEntradaB(14),
					Cin => Cout(13),
					seletor => seletor_1bit,
					saida => saida(14),
					Cout => Cout(14)		
				);	

    ULA15 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(15) ,
					entradaB => sigEntradaB(15),
					Cin => Cout(14),
					seletor => seletor_1bit,
					saida => saida(15),
					Cout => Cout(15)		
				);	

    ULA16 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(16) ,
					entradaB => sigEntradaB(16),
					Cin => Cout(15),
					seletor => seletor_1bit,
					saida => saida(16),
					Cout => Cout(16)		
				);	

    ULA17 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(17) ,
					entradaB => sigEntradaB(17),
					Cin => Cout(16),
					seletor => seletor_1bit,
					saida => saida(17),
					Cout => Cout(17)		
				);	

    ULA18 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(18) ,
					entradaB => sigEntradaB(18),
					Cin => Cout(17),
					seletor => seletor_1bit,
					saida => saida(18),
					Cout => Cout(18)		
				);	
    ULA19 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(19) ,
					entradaB => sigEntradaB(19),
					Cin => Cout(18),
					seletor => seletor_1bit,
					saida => saida(19),
					Cout => Cout(19)		
				);	

    ULA20 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(20) ,
					entradaB => sigEntradaB(20),
					Cin => Cout(19),
					seletor => seletor_1bit,
					saida => saida(20),
					Cout => Cout(20)		
				);	

    ULA21 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(21) ,
					entradaB => sigEntradaB(21),
					Cin => Cout(20),
					seletor => seletor_1bit,
					saida => saida(21),
					Cout => Cout(21)		
				);	

    ULA22 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(22) ,
					entradaB => sigEntradaB(22),
					Cin => Cout(21),
					seletor => seletor_1bit,
					saida => saida(22),
					Cout => Cout(22)		
				);	

    ULA23 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(23) ,
					entradaB => sigEntradaB(23),
					Cin => Cout(22),
					seletor => seletor_1bit,
					saida => saida(23),
					Cout => Cout(23)		
				);	

    ULA24 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(24) ,
					entradaB => sigEntradaB(24),
					Cin => Cout(23),
					seletor => seletor_1bit,
					saida => saida(24),
					Cout => Cout(24)		
				);	

    ULA25 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(25) ,
					entradaB => sigEntradaB(25),
					Cin => Cout(24),
					seletor => seletor_1bit,
					saida => saida(25),
					Cout => Cout(25)		
				);	

    ULA26 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(26) ,
					entradaB => sigEntradaB(26),
					Cin => Cout(25),
					seletor => seletor_1bit,
					saida => saida(26),
					Cout => Cout(26)		
				);	
    ULA27 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(27) ,
					entradaB => sigEntradaB(27),
					Cin => Cout(26),
					seletor => seletor_1bit,
					saida => saida(27),
					Cout => Cout(27)		
				);					
				
    ULA28 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(28) ,
					entradaB => sigEntradaB(28),
					Cin => Cout(27),
					seletor => seletor_1bit,
					saida => saida(28),
					Cout => Cout(28)		
				);		
    ULA29 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(29) ,
					entradaB => sigEntradaB(29),
					Cin => Cout(28),
					seletor => seletor_1bit,
					saida => saida(29),
					Cout => Cout(29)		
				);		
    ULA30 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(30) ,
					entradaB => sigEntradaB(30),
					Cin => Cout(29),
					seletor => seletor_1bit,
					saida => saida(30),
					Cout => Cout(30)		
				);		
    ULA31 : entity work.ULA_1bit 
				port map (
					entradaA => entradaA(31) ,
					entradaB => sigEntradaB(31),
					Cin => Cout(30),
					seletor => seletor_1bit,
					saida => saida(31),
					Cout => Cout(31)		
				);	
			
			
	
					
end architecture;