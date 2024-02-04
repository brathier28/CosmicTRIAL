local object = require("object")

BlackHole = {}

-- Constructor method
function BlackHole:new(x, y, radius)
    newObj = { x = x, y = y, radius = radius, color = { 1, 1, 1 } }
    self.__index = self
    return setmetatable(newObj, self)
end

function BlackHole:update(dt)
    ---define what the blackhole does later
end

-- Draw method
function BlackHole:draw()
    love.graphics.setColor(self.color)
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

return BlackHole
