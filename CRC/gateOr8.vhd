LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY gateOr8 IS
  PORT (x0, x1, x2, x3, x4, x5, x6, x7: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOr8;

ARCHITECTURE logicFunction OF gateOr8 IS
BEGIN
  y <= x0 or x1 or x2 or x3 or x4 or x5 or x6 or x7;
END logicFunction;
