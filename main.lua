_G.love = require "love"

-- called only once at the beggining of the game
function love.load()
    _G.Number = 0
    _G.pacman = {
        x = 500,
        y = 200,
        move_forward = function(self)
            self.x = self.x + 1
        end,
        is_eating = false
    }
    Food_x = 680

    love.graphics.setBackgroundColor(74 / 255, 14 / 255, 159 / 255)
end

-- callback called that update the state of the game every frame
--- @param dt integer deltatime
function love.update(dt)
    pacman:move_forward();
    if pacman.x >= (Food_x - 20) then
        pacman.is_eating = true
    end
end

-- Callback function used to draw on the screen every frame.
function love.draw()
    --love.graphics.setColor(Number, Number / 2, 0, 1 / Number)
    love.graphics.setColor(75 / 255, 148 / 255, 10 / 255)
    love.graphics.rectangle("fill", 200, 200, 150, 100)
    love.graphics.setColor(255 / 255, 196 / 255, 0)
    love.graphics.arc("fill", pacman.x, 200, 60, 1, 5)
    love.graphics.setColor(0, 0, 0)
    love.graphics.line(350, 200, 500, 200)
    love.graphics.circle("fill", 500, 500, 100, 100)
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.line(500, 201, 500, 500)

    if not pacman.is_eating then
        love.graphics.setColor(1, 0, 0)
        love.graphics.circle("fill", Food_x, pacman.y, 20)
    end
end
