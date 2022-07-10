----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:43 07/06/2022 
-- Design Name: 
-- Module Name:    Latch_Concurrente - Behavioral 
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

entity Latch_Concurrente is
	port(
		x, control: in std_logic;
		z: out std_logic
	);
end Latch_Concurrente;

architecture Behavioral of Latch_Concurrente is

begin

z <= x when (control = '1');

end Behavioral;


