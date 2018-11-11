
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec4_16 is
    Port (4in: IN std_logic_vector(3 downto 0); 
          decout: OUT std_logic_vector(15 downto 0));
end dec4_16;

architecture Behavioral of dec4_16 is

begin
    with 4in select
    decout <= "0000000000000001" WHEN "0000",
         "0000000000000010" WHEN "0001",
         "0000000000000100" WHEN "0010",
         "0000000000001000" WHEN "0011",
         "0000000000010000" WHEN "0100",
         "0000000000100000" WHEN "0101",
         "0000000001000000" WHEN "0110",
         "0000000010000000" WHEN "0111",
         "0000000100000000" WHEN "1000",
         "0000001000000000" WHEN "1001",
         "0000010000000000" WHEN "1010",
         "0000100000000000" WHEN "1011",
         "0001000000000000" WHEN "1100",
         "0010000000000000" WHEN "1101",
         "0100000000000000" WHEN "1110",
         "1000000000000000" WHEN others;
end Behavioral;