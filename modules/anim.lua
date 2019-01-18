local anim = {}

function anim.new(image, width, height, starty, endy, startx, endx, duration)
  local animation = {}
  animation.spriteSheet = image;
  animation.quads = {};

  for y = starty, endy, height do
    for x = startx, endx - width, width do
      table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
    end
  end

  animation.duration = duration or 1
  animation.currentTime = 0

  function animation:update(dt)
    animation.currentTime = animation.currentTime + dt
    if animation.currentTime >= animation.duration then
      animation.currentTime = animation.currentTime - animation.duration
    end
  end
  return animation
end

return anim
