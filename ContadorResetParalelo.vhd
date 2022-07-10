----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:48 07/06/2022 
-- Design Name: 
-- Module Name:    ContadorResetParalelo - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContadorResetParalelo is
    Port ( P : in  STD_LOGIC_VECTOR(3 downto 0);
           clk : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           ENP : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR(3 downto 0));
end ContadorResetParalelo;

architecture Behavioral of ContadorResetParalelo is

begin
	process(clk, RESET, LOAD, ENP) begin
		if(RESET = '1') then
			Q <= "0000";
			elsif(clk'event and clk='1') then
				if(LOAD = '0' and ENP = '-') then 
					Q <= P;
				elsif(LOAD = '1' and ENP = '0') then
					Q <= Q;
				elsif(LOAD = '1' and ENP = '1') then
					Q <= Q + 1;
				end if;
		end if;
	end process;
		
end Behavioral;

