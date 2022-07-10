----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:47 07/06/2022 
-- Design Name: 
-- Module Name:    RegistroSerie - Behavioral 
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

entity RegistroSerie is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end RegistroSerie;

architecture Behavioral of RegistroSerie is

signal a,b: std_logic;

begin
	process(clk)
		begin
			if(clk'event and clk='1') then 
				a <= d;
				b <= a;
				q <= d;
			end if;
	end process;

end Behavioral;

