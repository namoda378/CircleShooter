

local a = ""

a = a .. "*"
print(a)
-- 출력 : *

a = a .. "*"
print(a)
-- 출력 : **

a = a .. "*"
print(a)
-- 출력 : ***

function addStarToA()
  a = a .. "*"
end

addStarToA()
print(a)
-- 출력 : ****


addStarToA()
print(a)
-- 출력 : *****


addStarToA()
print(a)
-- 출력 : ******
