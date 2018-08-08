-- RPNCalc.hs
module Chapter10.RPNCalc where

data Operation =
  Add |
  Sub |
  Mul |
  Div |
  Pwr |
  Log |
  Sum |
  Flp |
  Psh Double
  deriving (Eq)

type Stack = [Double]

push :: Double -> Stack -> Stack
push value stack = value : stack

pop :: Stack -> (Double, Stack)
pop stack = (head stack, tail stack)

parse :: [String] -> [Operation]
parse [] = []
parse (op:rest)
  | op == "+" = Add : parse rest
  | op == "-" = Sub : parse rest
  | op == "*" = Mul : parse rest
  | op == "/" = Div : parse rest
  | op == "^" = Pwr : parse rest
  | op == "ln" = Log : parse rest
  | op == "sum" = Sum : parse rest
  | op == "flip" = Flp : parse rest
  | otherwise = Psh (read op :: Double) : parse rest

execute1 :: (Double -> Double) -> Stack -> Stack
execute1 op currentStack = push (op fstOperand) s0 where
  (fstOperand, s0) = pop currentStack

execute2 :: (Double -> Double -> Double) -> Stack -> Stack
execute2 op currentStack = push (op fstOperand sndOperand) s1 where
  (fstOperand, s0) = pop currentStack
  (sndOperand, s1) = pop s0

run :: [Operation] -> Stack -> Double
run [] currentStack = fst (pop currentStack)
run (Add:rest) currentStack = run rest (execute2 (+) currentStack)
run (Sub:rest) currentStack = run rest (execute2 (-) currentStack)
run (Mul:rest) currentStack = run rest (execute2 (*) currentStack)
run (Div:rest) currentStack = run rest (execute2 (/) currentStack)
run (Pwr:rest) currentStack = run rest (execute2 (**) currentStack)
run (Log:rest) currentStack = run rest (execute1 log currentStack)
run (Sum:rest) currentStack = run rest [sum currentStack]
run (Flp:rest) currentStack = run rest (sndOperand : fstOperand : s1) where
  (fstOperand, s0) = pop currentStack
  (sndOperand, s1) = pop s0
run ((Psh v):rest) currentStack = run rest (push v currentStack)
