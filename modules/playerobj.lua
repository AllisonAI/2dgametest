local playerobj = {}

function playerobj.new(anim, info)
  info.sprite = anim
  local player = info

  function info:update()
    local spriteNum = math.floor(anim.currentTime / anim.duration * #anim.quads) + 1
    if #anim.quads < spriteNum then spriteNum = #anim.quads end
    love.graphics.draw(anim.spriteSheet,
      anim.quads[spriteNum],
      math.floor(player.x),
      math.floor(player.y),
      0,
      1,
      1,
      player.ox,
      player.oy
    )

    -- Temporarily draw a point at our location so we know
    -- that our sprite is offset properly
    love.graphics.setPointSize(3)
    love.graphics.points(math.floor(player.x), math.floor(player.y))
  end
  return info
end

return playerobj
