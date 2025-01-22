module Test where

import Clash.Prelude

data OPC = ADD | MUL | SUB

data ADat a = ADatCon a

topEntity :: OPC -> Integer -> Integer -> (Integer,(Integer,OPC,Integer))
topEntity o a b = (x,calc)
  where calc = (a,o,b)
        x = compute calc


compute :: (Integer,OPC,Integer) -> Integer
compute (a,ADD,b) = a+b
compute (a,SUB,b) = a-b
compute (a,MUL,b) = a*b
