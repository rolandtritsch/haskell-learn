-- Spec.hs

import Chapter00Spec
import Chapter01Spec
import Chapter02Spec

main :: IO ()
main = do
  Chapter00Spec.run
  Chapter01Spec.run
  Chapter02Spec.run
