local M = {}
M.uint = nil -- no default

local function new(uint)
	if uint==nil then
		-- use the previous implementation
		uint = M.uint
		assert(uint, "please provide the uint implementation function")
	else
		M.uint = uint
	end

	--uint = require("nums.uintn")
	--uint = require("nums.uintb")

	local a8,b8,c8, a32,b32,c32

	a8 = uint.u8(19)
	b8 = uint.u8(142)
	c8 = uint.u8(254)

	a32 = uint.u32(6000)
	b32 = uint.u32(9)
	c32 = uint.u32(12345678)

	local env = {uint, a8,b8,c8, a32,b32,c32}
	return env
end

setmetatable(M, {__call=function(_, ...) return new(...) end})

return M
