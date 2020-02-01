-- local, .. , +-/* 


local table1 = { "dog" , "apple" , "bee" , "cat" }

-- for index,value in ipairs(table1) do 

--   print("----------------------------")

-- end

local i = 3

for i1,v1 in ipairs({"a","b","c"}) do

  print("--------------------------------")

  for i2,v2 in ipairs({1,2,3}) do
  
    print(">>--------------------------------")

    print("hello " .. v1 .. " " .. v2)
  end 

end
