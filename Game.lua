local Carta = require 'Carta'
local Game = {} 
Game.__index = Game 

function pos2coo(i)
  local size = 200
  local x = (i-1)*size 
  local y = 300
  return x,y
end
function Game.new()
  local self = setmetatable({}, Game)
  self.objs = {}
  str = {"oi","tchau","ma"}
  for i=1,3 do
    self.objs[i] = Carta.new(str[i],pos2coo(i))
  end
  
  return self
end
function Game:draw()
  for k,v in pairs(self.objs) do
    v:draw()
  end
end
return Game