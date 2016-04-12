import library.IEEE;
use library.IEEE;

entity fullAddr is
	begin
	Port(x, y, cin: in STD_LOGIC;
		 sum, cout: out STD_LOGIC);
	end fullAddr;
architecture Behavior of fullAddr is
	begin
		sum <= (x and not y and not cin) or (not x and y and not cin) or (not x and not y and cin) or (x and y and cin);
		cout <= (x and y) or (y and cin) or (x and cin);
	end Behavior;
