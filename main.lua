_G.love = require "love"

-- called only once at the beggining of the game
function love.load()
    _G.Number = 0
end

-- callback called that update the state of the game every frame
--- @param dt integer deltatime
function love.update(dt)
    if Number < 240 then
        Number = Number + 1
    end
end

function love.draw()
    love.graphics.print(Number)
end
