-- Person.hs
module Chapter07.Person where

type Date = String
type PhoneNumber = String
type Address = String

data WeekDay =
  Monday |
  Tuesday |
  Wednesday |
  Thursday |
  Friday |
  Saturday |
  Sunday
  deriving (
    Eq,
    Ord,
    Enum,
    Bounded,
    Show,
    Read
  )

data Person = Person {
  firstName :: String,
  lastname :: String,
  birthDay :: Date,
  bornOn :: WeekDay,
  height :: Float,
  homePhoneNumber :: PhoneNumber,
  homeAddress :: Address
} deriving (Show)

newRoland :: Person
newRoland = Person
  "Roland"
  "Tritsch"
  "01/01/1970"
  Sunday
  1.8
  "+353-12-123-1234"
  "Tritsch-Castle"
