local Texto = {} 
Texto.__index = Texto 

function Texto.new(str,x,y)
  local self = setmetatable({}, Texto)
  self.str = str
  self.x = x
  self.y = y
  return self
end
function Texto:draw()
  love.graphics.print(self.str, self.x, self.y)
end
return Texto