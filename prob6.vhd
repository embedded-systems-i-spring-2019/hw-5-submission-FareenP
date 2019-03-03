library IEEE;
use IEEE.std_logic_1164.all, ieee.numeric_std.all;

entity mux_81 is
port ( D_in : in std_logic_vector (7 downto 0);
SEL : in std_logic_vector (2 downto 0);
M_OUT : out std_logic);
end mux_81;

architecture mux8_1 of mux_81 is
begin
    process (D_in,SEL)
    begin
        if (SEL = "111") then M_OUT <= D_in(7);
        elsif (SEL = "110") then M_OUT <= D_in(6);
        elsif (SEL = "101") then M_OUT <= D_in(5);
        elsif (SEL = "100") then M_OUT <= D_in(4);
        elsif (SEL = "011") then M_OUT <= D_in(3);
        elsif (SEL = "010") then M_OUT <= D_in(2);
        elsif (SEL = "001") then M_OUT <= D_in(1);
        elsif (SEL = "000") then M_OUT <= D_in(0);
        else M_OUT <= '0';
        end if;
    end process;
end mux8_1;

architecture mux8_to_1 of mux_81 is --both architectures going to do same thing so thats why i only used one entity
begin
    process (SEL,D_IN,SEL)
    begin
            case (SEL) is
                when "000" => M_OUT <= D_in(0);
                when "001" => M_OUT <= D_in(1);
                when "010" => M_OUT <= D_in(2);
                when "011" => M_OUT <= D_in(3);
                when "100" => M_OUT <= D_in(4);
                when "101" => M_OUT <= D_in(5);
                when "110" => M_OUT <= D_in(6);
                when "111" => M_OUT <= D_in(7);
                when others => M_OUT <= '0';
            end case;
    end process;
end mux8_to_1;








