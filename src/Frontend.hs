module Frontend (Cuircuit) where

--import qualified Prelude as H

data Cuircuit a = Node a
                | Add (Cuircuit a) (Cuircuit a) 
                | Sub (Cuircuit a) (Cuircuit a) 
                | Mul (Cuircuit a) (Cuircuit a) 
                | Div (Cuircuit a) (Cuircuit a)

  deriving (Show)

matrix :: Matrix String
matrix = undefined

node1 :: Cuircuit Int
node1 = Node 1

node2 :: Cuircuit Int
node2 = Node 2

node3 :: Cuircuit Int
node3 = Node 3

example :: Cuircuit Int  
example = Mul (Mul node1 node1) (Add node2 node3)


evalCuircuit :: Cuircuit a -> a
evalCuircuit = undefined







