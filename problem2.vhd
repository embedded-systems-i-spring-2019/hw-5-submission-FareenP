library IEEE;
use ieee.std_logic_1164.all, ieee.numeric_std.all;

entity prob2 is
port(A1,A2,B1,B2,D1 : in std_logic;
     E_out : out std_logic);
     end prob2;
     
 architecture pr2_1 of prob2 is
 signal nd1 : std_logic;
 begin
    process(A1,A2,B1,B2,D1)
    begin
        nd1<=not(D1);
        if(A1='1' and A2='1') then
           E_out<='1';
        elsif(B1='1' or B2='1') then 
            E_out<='1';
        elsif(nd1='1' and B2='1') then 
            E_out<='1';
        else
            E_out<='0';
        end if;
    end process;
 end pr2_1;
 
 architecture pr_2_2 of prob2 is --made another architecture of the same entity because it does the same thing(for this homework problem)
    signal aabb : std_logic_vector(3 downto 0);
 begin 
  aabb<=A1&A2&b1&b2; --dont need d when yoyu look at simplified equation
  process(aabb)
  begin
    case(aabb) is
       when "11--" => E_out <='1';
       when "--1-" => E_out <= '1';
       when "---1" => E_out <='1';
       when others => E_out<='0';
    end case;
  end process;
end pr_2_2;
 
 