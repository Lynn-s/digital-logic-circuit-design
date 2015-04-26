library ieee;
use ieee.std_logic_1164.all;
entity decoder is
port(
	x : in std_logic;
	y : in std_logic;
	D0 : out std_logic;
	D1 : out std_logic;
	D2 : out std_logic;
	D3 : out std_logic;
);
end decoder;

architecture decoder_arc of decoder is
begin
	D0 <=(not(x)and not(y));
	D1 <=(not(x)and (y));
	D2 <=((x)and not(y));
	D3 <=((x)and(y));
end decoder_arc;
