----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:38 07/06/2022 
-- Design Name: 
-- Module Name:    RegistroParalelo_4Bits - Behavioral 
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

entity RegistroParalelo_4Bits is
    Port ( D : in  STD_LOGIC_VECTOR(3 downto 0);
           clk : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           Qn : inout  STD_LOGIC_VECTOR(3 downto 0);
           Q : inout  STD_LOGIC_VECTOR(3 downto 0));
end RegistroParalelo_4Bits;

architecture Behavioral of RegistroParalelo_4Bits is

begin
	process(clk, CLR) begin
		if(clk'event and clk='1')then 
			if(CLR = '1') then 
				Q <= D;
				Qn <= not Q;
			else 
				Q <= "0000";
				Qn <= "1111";
			end if;
		end if;
	end process;

end Behavioral;

