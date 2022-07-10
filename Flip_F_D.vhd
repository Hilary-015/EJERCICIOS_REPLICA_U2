----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:51 07/06/2022 
-- Design Name: 
-- Module Name:    Flip_F_D - Behavioral 
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

entity Flip_F_D is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Flip_F_D;

architecture Behavioral of Flip_F_D is

begin
	process(clk, D, RESET)
		begin 
			if RESET = '1' then 
				Q <= '0';
				elsif (clk'event and clk = '1') then 
					Q <= D;
			end if;
	end process;
	
end Behavioral;

