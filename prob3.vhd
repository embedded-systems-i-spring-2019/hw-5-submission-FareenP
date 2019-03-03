library ieee;
use ieee.std_logic_1164.all, ieee.numeric_std.all;

entity prob3 is
port(A1,A2,B1,B2,D1 : in std_logic;
    E_out : out std_logic);
end prob3;

architecture prob3_1 of prob3 is

begin
E_out <= (A1  AND A2) OR B1 OR B2;
end prob3_1;
