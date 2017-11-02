local Rect = {} 
Rect.__index = Rect 

function Rect.new(x,y,w,h)
  local self = setmetatable({}, Rect)
  self.x = x
  self.y = y
  self.w = w
  self.h = h
  return self
end
function Rect:draw()
  love.graphics.rectangle( "fill", self.x, self.y, self.w, self.h )
end
return Rect