-- Spec.hs

import Chapter00Spec
import Chapter01Spec

main :: IO ()
main = do
  Chapter00Spec.run
  Chapter01Spec.run
