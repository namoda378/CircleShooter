

local circ = display.newCircle(100,100,30)
circ:setFillColor(1,0,0)


function dosth()
    circ.x = circ.x + 5
    circ.y = (circ.x - 100)*0.3 * (circ.x - 100)*0.3
    -- print("hello dosth")
end

-- dosth()
-- 출력 : hello dosth

local numframe = 0

function add1ToNumframe()
    circ.x = circ.x + 1
end

Runtime:addEventListener("enterFrame",add1ToNumframe)

function printNumFrame()
    print(numframe)
end

timer.performWithDelay(1000,printNumFrame,0)
