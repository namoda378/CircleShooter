a = a + 4

-- 이 코드는 무엇을 하는 코드입니다. 
a = "namo"

-- print(a)

function dosth(x)

  local a = " nana "

  print(" do " .. a .. "sth is called with " .. x)

end

-- for loop
for i,v in ipairs({"apple","bee","cat"}) do 
  dosth(v)
end