Class = {}
Class.__index = Class


new = function(class)
    local class = class or {}
	local inc = class.__includes or {}
	if getmetatable(inc) then inc = {inc} end

    for i,v in pairs(inc) do
        self[i] = v -- hopefully overwrites..
    end

    class.__index    = class
	class.__call     = class.main or class.__call or function() end
	class.include    = class.include or include
	class.clone      = class.clone or clone

    setmetatable(class, {__index = class, __call = class.__call})

    return class
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

include2 = function(class, overwrite, ...)
    if not class then error("no class specified!") end
    if not overwrite then overwrite = {} end

    --todo
    local newClass = deepcopy(class)

    for i,v in pairs(overwrite) do
        newClass[i] = v -- hopefully overwrites..
    end

    return setmetatable(newClass, {}) -- hopefully this works...
end

clone = function(class)
    if not class then error("no class specified!") end

    return setmetatable(include2({}, class), getmetatable(class))
end

include = function(class, other)
    if not class then error("no class specified!") end
    if not other then other = {} end
    local super = class.__call or function() print("no super!") end
    inc = setmetatable(include2({}, class), getmetatable(class))
    for i,v in pairs(other) do
        inc[i] = v
    end
    inc.super = super
    return inc
end

return setmetatable({new = new, include = include, clone = clone}, {__call = function(self,...) return new(...) end})
    
--[[
    example:
    thing = class.new({
        ok = "default";
        __call = function(self, hi)
            print("owo "..hi)
            self.ok = hi
        end;
        toString = function(self)
            print(self.ok)
        end;
    })

    thing("ok")
    thing:toString()

    thing2 = thing:include({
        ok = "hewwo";
    })

    thing2:toString()
    thing:toString()
    thing2:super("hello")
    thing:toString()
    thing2:toString()
]]