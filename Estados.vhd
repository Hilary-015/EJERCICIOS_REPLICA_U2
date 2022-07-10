----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:01 07/06/2022 
-- Design Name: 
-- Module Name:    Estados - Behavioral 
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

entity Estados is
	port(
		clk, x: in std_logic;
		z: out std_logic
	);
end Estados;

architecture Behavioral of Estados is

type estados is (d0, d1, d2, d3);
signal edo_presente, edo_futuro: estados;

begin
	proceso1: process(edo_presente, x)begin
		case edo_presente is
			when d0 => Z <= '0';
				if x = '1' then 
					edo_futuro <= d1;
				else 
					edo_futuro <= d0;
				end if;
			when d1 => Z <= '0';
				if x = '1' then 
					edo_futuro <= d2;
				else 
					edo_futuro <= d1;
				end if;
			when d2 => Z <= '0';
				if x = '1' then 
					edo_futuro <= d3;
				else 
					edo_futuro <= d0;
				end if;
			when d3 => Z <= '0';
				if x = '1' then 
					edo_futuro <= d0;
					z <= '1';
				else 
					edo_futuro <= d0;
					z <= '0';
				end if;
		end case;
	end process proceso1;
	
	proceso2: process (clk) begin
		if(clk'event and clk='1') then
			edo_presente <= edo_futuro;
		end if;
	end process proceso2;

end Behavioral;

