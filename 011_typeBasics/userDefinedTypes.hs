patientInfo:: String -> String -> Int -> Double -> String
patientInfo firstName lastName age height = fullName ++ " " ++ ageHeight
  where fullName = lastName ++ ", " ++ firstName
        ageHeight = "("++ show age ++ " yrs. "++ show height ++" m)"

-- Building type synonyms
type FirstName = String
type LastName = String
type Age = Int
type Height = Double


patientInfo2 :: FirstName -> LastName -> Age -> Height ->String
patientInfo2 firstName lastName age height = fullName ++ " " ++ ageHeight
  where fullName = lastName ++ ", " ++ firstName
        ageHeight = "("++ show age ++ " yrs. "++ show height ++" m)"



type PatientName = (String ,String)

firstName :: PatientName -> FirstName
firstName patient = fst patient

lastName :: PatientName -> LastName
lastName patient = snd patient

patientInfo3 :: PatientName -> Age -> Height -> String
patientInfo3 (firstName,lastName) age height = fullName ++ " " ++ ageHeight
  where fullName = lastName ++ ", " ++ firstName
        ageHeight = "("++ show age ++ " yrs. "++ show height ++" m)"

-- Creating new types
data Sex = Male | Female

sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'

data RhType = Pos | Neg

data ABOType = A | B | AB | O

data BloodType = BloodType ABOType RhType

patient1BT::BloodType
patient1BT = BloodType A Pos

patient2BT::BloodType
patient2BT = BloodType O Neg

patient3BT::BloodType
patient3BT = BloodType AB Pos

showRh::RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO::ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType::BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

canDonateTo::BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True -- Universal Donor
canDonateTo _ (BloodType AB _) = True -- Universal Receiver
canDonateTo (BloodType A _)(BloodType A _) = True
canDonateTo (BloodType B _)(BloodType B _) = True
canDonateTo _ _ = False -- otherwise


type MiddleName = String

data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName

showName::Name -> String
showName (Name firstName lastName ) = firstName ++ " " ++ lastName
showName (NameWithMiddle firstName middleName lastName) =  firstName ++ " "++ middleName++ "" ++ lastName

--data Patient = Patient Name Sex Age Height BloodType

--johnDoe::Patient
--johnDoe = Patient (NameWithMiddle "Juan" "Sebastian" "Valdivia") Male 28 1.88 (BloodType A Neg)
--
--
--getName::Patient -> Name
--getName (Patient n _ _ _ _) = n
--
--getAge::Patient -> Age
--getAge (Patient _ _ a _ _) = a
--
--getBloodType::Patient -> BloodType
--getBloodType (Patient _ _ _ _ bt) = bt


-- record already has getters and setters (assignment to a new type instance)
data Patient = Patient1 { name :: Name
                         , sex :: Sex
                         , age :: Age
                         , height :: Double
                         , weight :: Int
                         , bloodType :: BloodType }


donorFor:: Patient -> Patient -> Bool
donorFor p1 p2 = canDonateTo (bloodType p1) (bloodType p2)

