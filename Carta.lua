local Rect = require 'Rect'
local Texto = require 'Texto'

local Carta = {} 
Carta.__index = Carta 

function Carta.new(str,x,y)
  local self = setmetatable({}, Carta)
  self.w = 100
  self.h = 200
  self.rect = Rect.new(x,y,self.w,self.h)
  self.text = Texto.new(str,x+0.2*self.w,y)
  self.x = x
  self.y = y
  self.color = {255,255,255}
  self.text_color = {255,0,0}
  return self
end
function Carta:draw()
  love.graphics.setColor(self.color )
  self.rect:draw()
  love.graphics.setColor(self.text_color )
  self.text:draw()
end
function Carta:click()

end
return Carta