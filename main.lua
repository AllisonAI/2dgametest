local Timer = require "modules/hump/timer"
local sti = require "modules/sti"
local anim = require "modules/anim"
local playerobj = require "modules/playerobj"
map = nil -- used across modules
player = nil -- used across modules

function love.load()
  -- Load map file
  map = sti("assets/map.lua")

  -- Create new dynamic data layer called "Sprites" as the 3rd layer
  local layer = map:addCustomLayer("Sprites", 3)

  -- Get player spawn object
  local playerf
  for _, object in pairs(map.objects) do
    if object.name == "Player" then
      playerf = object
      break
    end
  end

  -- Create player object
  layer.player = playerobj.new(
    anim.new(love.graphics.newImage("assets/LPC_Sara/SaraFullSheet.png"), 64, 64, 640, 640, 64, 512, 1),
    {
      x      = playerf.x+16,
      y      = playerf.y+32,
      ox     = 32,
      oy     = 64
    }
  )

  -- Draw player
  layer.draw = function(self)
    layer.player.update()
  end

  -- Remove unneeded object layer
  map:removeLayer("Spawn Point")
  player = map.layers["Sprites"].player
end

function love.update(dt)
  --Timer.update(dt)
  map:update(dt)
  player.sprite:update(dt)
end

function love.draw()
  -- Translate world so that player is always centred
  local tx = math.floor(player.x - love.graphics.getWidth()  / 2)
  local ty = math.floor(player.y - love.graphics.getHeight() / 2)

  map:draw(-tx, -ty)
end
