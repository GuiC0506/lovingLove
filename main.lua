_G.love = require "love"
_G.keyboard = love.keyboard

-- called only once at the beggining of the game
function love.load()
    _G.Number = 0
    _G.pacman = {
        x = 500,
        y = 200,
        move_forward = function(self)
            self.x = self.x + 3
        end,
        move_backward = function(self)
            self.x = self.x - 3
        end,
        move_up = function(self)
            self.y = self.y - 3
        end,
        move_down = function(self)
            self.y = self.y + 3
        end
    }
    Food = {
        x = 600,
        y = 300,
        eaten = false
    }
    love.graphics.setBackgroundColor(74 / 255, 14 / 255, 159 / 255)
end

-- callback called that update the state of the game every frame
--- @param dt integer deltatime
function love.update(dt)
    if keyboard.isDown("w") then
        pacman:move_up();
    end
    if keyboard.isDown("d") then
        pacman:move_forward();
    end
    if keyboard.isDown("a") then
        pacman:move_backward();
    end
    if keyboard.isDown("s") then
        pacman:move_down();
    end
    if pacman.x >= (Food.x - 20) then
        Food.eaten = true
    end
end

-- Callback function used to draw on the screen every frame.
function love.draw()
    love.graphics.setColor(75 / 255, 148 / 255, 10 / 255)
    love.graphics.rectangle("fill", 200, 200, 150, 100)
    love.graphics.setColor(255 / 255, 196 / 255, 0)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, 2, 6)
    love.graphics.setColor(0, 0, 0)
    love.graphics.line(350, 200, 500, 200)
    love.graphics.circle("fill", 500, 500, 100, 100)
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.line(500, 201, 500, 500)
    if not Food.eaten then
        love.graphics.setColor(1, 0, 0)
        love.graphics.circle("fill", Food.x, Food.y, 20)
    end
end
