LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY gateXor2 IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXor2;

ARCHITECTURE logicFunction OF gateXor2 IS
BEGIN
  y <= (not( x0 and x1)) and (x0 or x1);
END logicFunction;
