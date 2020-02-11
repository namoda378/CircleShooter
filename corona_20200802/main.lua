

local a = math.random(1,100)
print(a)              

local b = {} 

-- b[1] = math.random(1,100)
-- b[2] = math.random(1,100)
-- b[3] = math.random(1,100)
-- b[4] = math.random(1,100)
-- ...

local c = {} 

for i = 1,3 do 
    c[i] = math.random(1,100)/100
end

local cx = display.contentCenterX
local cy = display.contentCenterY
local cw = display.contentWidth
local ch = display.contentHeight


---

-- 예제 1 

local num = 40

--  x 에 무슨 값을 넣든 x 개의 랜덤한 원이 생성되게끔 
--  각 원은 서로 다른 랜덤한 위치, 크기, 색깔을 갖는다. 


local cw = display.contentWidth
local ch = display.contentHeight

for i = 1 , num do 
    
    
    local r = math.random(1,20)
    local x = math.random(r,cw-r)
    local y = math.random(r,ch-r)

    local circ = display.newCircle(x,y,r)

    local r = math.random(1,100)/100
    local g = math.random(1,100)/100
    local b = math.random(1,100)/100
    circ.fill = {r,g,b}
    
    local a = math.random(1,100) * math.pi/100
    local b = math.random(1,100) * math.pi/100
    local x0 = circ.x
    local y0 = circ.y
    
    circ:addEventListener("enterFrame",function()
        a = a + math.random(1,5)*0.01
        b = b + math.random(1,5)*0.01
        circ.x = x0 + math.sin(a)*200
        circ.y = y0 + math.sin(b)*200
    end)
    
end





















