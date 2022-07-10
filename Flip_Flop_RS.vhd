----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:30 07/06/2022 
-- Design Name: 
-- Module Name:    Flip_Flop_RS - Behavioral 
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

entity Flip_Flop_RS is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           Qn : inout  STD_LOGIC);
end Flip_Flop_RS;

architecture Behavioral of Flip_Flop_RS is

begin
	process(clk, S, R)
		begin
			if(clk'event and clk='1') then 
				if(S='0' and R = '1') then 
					Q <= '0';
					Qn <= '1';
				elsif(S='1' and R = '0') then 
					Q <= '1';
					Qn <= '0';
				elsif(S='0' and R = '0') then 
					Q <= Q;
					Qn <= Qn;
				else
					Q <= '-';
					Qn <= '-';
				end if;
			end if;
	end process;

end Behavioral;

