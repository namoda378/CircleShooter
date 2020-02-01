  
-- print(a)
local t1 = {"apple","bee","cat","dog","eeee",6,7}

local a = " Hello "

-- -- for loop
-- for i,v in ipairs(t1) do 
--   a = a + v
-- end

-- a = a .. " " ..t1[3]
-- a = a .. " " ..t1[5]
-- a = a .. " " ..t1[7]
-- -- ..

function f1(x)
  -- local a = " HI !! "
  a = a .. " " .. t1[x]
  print(a)
end


-- f1(3)
-- f1(5)
-- f1(7)

for i,v in ipairs({3,5,7}) do 
  f1(v)
end
