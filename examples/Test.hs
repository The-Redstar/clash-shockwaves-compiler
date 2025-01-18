module Test where

import Clash.Prelude

data OPC = ADD | MUL | SUB

data ADat a = ADatCon a

topEntity :: OPC -> Integer -> Integer -> Integer
topEntity SUB = (-)
topEntity ADD = (+)
topEntity MUL = (*)
