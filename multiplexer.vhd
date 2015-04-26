library ieee;
use ieee.std_logic_1164.all;
entity multiplexer is
port( --declaration of port
      I0 : in std_logic;
      I1 : in std_logic;
      I2 : in std_logic;
      I3 : in std_logic;
      S0 : in std_logic;
      S1 : in std_logic;
      result : out std_logic;
);
end multiplexer;
architecture multiplexer_arc of multiplexer is --declaration of arc
signal result A: std_logic;
signal result B: std_logic;
signal result C: std_logic;
signal result D: std_logic;
begin
	resultA<=(I0 and (not S0) and (not S1));
	resultB<=(I1 and (not S0) and (S1));
	resultC<=(I2 and (S0) and (not S1));
	resultD<=(13 and (S0) and (S1));
	Result<=((resultA) or (resultB) or (resultC) or (resultD));
end multiplexer_arc;

