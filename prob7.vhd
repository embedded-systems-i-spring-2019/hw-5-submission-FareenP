library IEEE;
use IEEE.std_logic_1164.all, ieee.numeric_std.all;

entity decode3_8 is
    port(x: in integer range 0 to 7;
         y: out unsigned(7 downto 0));
         
end entity decode3_8;

architecture decode of decode3_8 is
begin
    process(x)
    begin 
            if (x=0)then y <= "00000001";
            elsif x=1 then y <= "00000010";
            elsif x=2 then y <= "00000100";
            elsif x=3 then y <= "00001000";
            elsif x=4 then y <= "00010000";
            elsif x=5 then y <= "00100000";
            elsif x=6 then y <= "01000000";
            else y <= "10000000";
            end if;
   end process;
end architecture decode;

library ieee;
use ieee.std_logic_1164.all, ieee.numeric_std.all;

entity d38 is
    port(a: in std_logic_vector(2 downto 0);
         d: out std_logic_vector(7 downto 0));
end entity d38;


architecture dec_38 of d38 is
begin
    process(a)
    begin
        case(a) is
            when "000" => d <= "00000001";
            when "001" => d <= "00000010";
            when "010" => d <= "00000100";
            when "011" => d <= "00001000";
            when "100" => d <= "00010000";
            when "101" => d <= "00100000";
            when "110" => d <= "01000000";
            when "111" => d <= "10000000";
        end case;
    end process;
end dec_38;