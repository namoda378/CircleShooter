
-- 이 코드는 무엇을 하는 코드입니다. 

local outer_var = "namo"

function dosth(x)

  print(" dosth " .. "sth is called with " .. x .. " and outer var is still " .. outer_var)

end

-- for loop
for i,v in ipairs({"apple","bee","cat"}) do 
  dosth(v)Ayy