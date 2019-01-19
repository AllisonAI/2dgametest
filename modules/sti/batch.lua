--[[
MIT License

Copyright (c) 2019 Positive07

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]
local Batch = {}

local lnewSpriteBatch = love.graphics.newSpriteBatch
local ldraw = love.graphics.draw

local SpriteBatch = { _isSpriteBatch = true }
SpriteBatch.__index = SpriteBatch

function SpriteBatch:add (...)
   table.insert(self._quads, {n = select("#", ...), ...})
   self._buffersize = math.max(#self._quads, self._buffersize)

   return #self._quads
end

function SpriteBatch:clear (soft)
   if soft then
      for i=#self._quads, 1, -1 do
         self._quads[i] = nil
      end
   else
      self._quads = {}
   end
end

function SpriteBatch:getCount ()
   return #self._quads
end

function SpriteBatch:flush () end --Not applicable

function SpriteBatch:getBufferSize ()
   return self._buffersize
end

function SpriteBatch:getTexture ()
   return self._texture
end

function SpriteBatch:set (id, ...) --TODO: Implement
   if id <= #self._quads and id >= 1 then
      self._quads[id] = {n = select("#", ...), ...}
   else
      error("The index hasn't been defined", 2)
   end
end

function SpriteBatch:setDrawRange(start, count)
   self._start, self._count = start, count
end

function SpriteBatch:setTexture(texture)
   self._texture = texture
end

function Batch.newSpriteBatch (texture, maxsprites, usage) --image, maxsprites, usage
   return setmetatable({
      _quads = {},
      _buffersize = maxsprites,
      _color = {},
      _texture = texture
   }, SpriteBatch)
end

function Batch.draw (drawable, x, y, r, sx, sy, ox, oy, kx, ky)
   if drawable._isSpriteBatch then
      local start = drawable._start or 1
      local count = drawable._count or (#drawable._quads - start)

      for i=start, start + count do
         local quad = drawable._quads[i]
         love.graphics.draw(drawable._texture, unpack(quad, 1, quad.n))
      end
   else
      ldraw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
   end
end
 
--luacheck: push ignore
function Batch.enable ()
   love.graphics.draw = Batch.draw
   love.graphics.newSpriteBatch = Batch.newSpriteBatch

   return self
end
 
function Batch.disable ()
   love.graphics.draw = ldraw
   love.graphics.newSpriteBatch = lnewSpriteBatch

   return self
end
--luacheck: pop
 
return Batch.enable() --ENABLED BY DEFAULT!
