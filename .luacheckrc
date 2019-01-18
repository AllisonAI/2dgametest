std = "love+luajit+lua52" --Lua and LuaJIT standard environment.
globals = {"map", "player"} --you can add more here
codes = true --Enable warnings codes
self = false --Ignore unused self warnings
max_line_length = 200 --Disable max line length warnings.

--The most annoying warnings
ignore = {
	"212", --Unused argument.
	"213", --Unused loop variable.
    "423", --Shadowing a loop variable.
    "422", --Shadowing an argument.
    "431", --Shadowing an upvalue.
    "432", --Shadowing an upvalue argument.
    "433", --Shadowing an upvalue loop variable.
	"542", --Empty if branch.
	"611", --A line consists of nothing but whitespace.
    "613", --Trailing whitespace in a string.
}