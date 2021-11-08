--[[ Display, RNG ]]--
    ROT=require 'src.rot'
    function love.load()
        frame=ROT.TextDisplay()
    end
    function love.draw()
        frame:draw()
    end

    x,y,i=1,1,64

    function love.update()
        if x<80 then x=x+1
        else x,y=1,y<24 and y+1 or 1
        end
        i = i<120 and i+1 or 64
        frame:write(string.char(i), x, y, getRandomColor(), getRandomColor())
    end

    function getRandomColor()
        return { (ROT.RNG:random(0,1.0)),
                 (ROT.RNG:random(0,1.0)),
                 (ROT.RNG:random(0,1.0)),
                 1.0}
    end
--]]
