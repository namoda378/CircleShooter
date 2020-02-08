
-- 코로나 sDK 가 첨가한 함수
-- local display = {}
-- display.newCircle = function()
--     그래픽카드에 명령
-- end

-- 루아 표준
-- print() 
-- pairs()
-- ipairs()

local myImage = display.newImage( "bloom.png" )
myImage.x = 100
myImage.y = 100

myImage.width = 100
myImage.height = 100

-- local circle = display.newCircle(100,100,100)
-- circle.fill = {0,1,0}


local a = 0

local move = function()
    a = a + 0.01  
    myImage.x = math.sin(a)*200 + 200
end

Runtime:addEventListener("enterFrame",move)

