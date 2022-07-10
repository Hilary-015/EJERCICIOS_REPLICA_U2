----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:35:59 07/06/2022 
-- Design Name: 
-- Module Name:    FlipFlop_Senales - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
-- Hilary Madeley Calva Camacho
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop_Senales is
    Port ( clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end FlipFlop_Senales;

architecture Behavioral of FlipFlop_Senales is

signal q_aux: std_logic;

begin
	process(clk, RESET, EN)
		begin
			if RESET = '1' then 
				q_aux <= '0'; 
				elsif(clk'event and clk = '1') then 
					if(EN = '1') then 
						q_aux <= D;
						else
						q_aux <= Q; 
					end if;
			end if;
	end process; 
	Q <= q_aux;

end Behavioral;

