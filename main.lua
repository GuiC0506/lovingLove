_G.love = require "love"

-- called only once at the beggining of the game
function love.load()
    _G.Number = 0
end

-- callback called that update the state of the game every frame
--- @param dt integer deltatime
function love.update(dt)
    if Number < 255 then
        Number = Number + 1
    else
        Number = 0
    end
end

-- Callback function used to draw on the screen every frame.
function love.draw()
    love.graphics.setColor(Number, Number / 2, 0, 1 / Number)
    love.graphics.rectangle("fill", 200, 200, 150, 100)
end
