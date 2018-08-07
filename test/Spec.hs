-- Spec.hs

import qualified Chapter00Spec as C00S
import qualified Chapter01Spec as C01S
import qualified Chapter02Spec as C02S
import qualified Chapter03Spec as C03S
import qualified Chapter04Spec as C04S
import qualified Chapter05Spec as C05S
import qualified Chapter06Spec as C06S
import qualified Chapter07Spec as C07S

main :: IO ()
main = do
  C00S.run
  C01S.run
  C02S.run
  C03S.run
  C04S.run
  C05S.run
  C06S.run
  C07S.run
