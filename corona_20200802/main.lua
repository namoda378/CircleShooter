
-- 코로나 sDK 가 첨가한 함수
-- local display = {}
-- display.newCircle = function()
--     그래픽카드에 명령
-- end

-- 루아 표준
-- print() 
-- pairs()
-- ipairs()

local circle = display.newCircle(100,100,100)
circle.fill = {0,1,0}

local move = function() 
    circle.x = circle.x + 1 
end

Runtime:addEventListener("enterFrame",move)
