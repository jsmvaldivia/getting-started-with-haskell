
robot(name,attack,hp)= \message -> message (name,attack,hp)

name (n,_,_) = n
attack (_,a,_)= a
hp (_,_,hp) = hp

getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHp aRobot = aRobot hp

damage aRobot attackDamage = aRobot (\(n,a,h) ->
                                      robot (n,a,h - attackDamage))

fight aRobot defender = damage defender attackDamage
  where attackDamage = if getHp aRobot > 10
                       then getAttack aRobot
                       else 0

printRobot aRobot = aRobot (\(n,a,hp)-> n ++
                                   " attack:" ++ (show a) ++
                                   " hp:" ++ (show hp))


lives robots = map getHp robots