-- Spec.hs

import Chapter00Spec
import Chapter01Spec
import Chapter02Spec
import Chapter03Spec
import Chapter04Spec
import Chapter05Spec

main :: IO ()
main = do
  Chapter00Spec.run
  Chapter01Spec.run
  Chapter02Spec.run
  Chapter03Spec.run
  Chapter04Spec.run
  Chapter05Spec.run
