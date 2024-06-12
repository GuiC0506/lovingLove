---@diagnostic disable:lowercase-global
love = require "love"
keyboard = love.keyboard

-- called only once at the beggining of the game
function love.load()
    jack = {
        x = 0,
        y = 0,
        sprite = love.graphics.newImage("assets/spritesheet.png")
    }
    SPRITE_WIDTH, SPRITE_HEIGHT = 5352, 569
    QUAD_WIDTH, QUAD_HEIGHT = 669, SPRITE_HEIGHT
    quads = {}
    for i = 1, 8 do
        quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)
    end
end

-- callback called that update the state of the game every frame
--- @param dt integer deltatime
function love.update(dt)
end

-- Callback function used to draw on the screen every frame.
function love.draw()
    love.graphics.draw(jack.sprite, quads[1], jack.x, jack.y)
end
