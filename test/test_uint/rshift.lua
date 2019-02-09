local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: rshift...")

if a8 >> a8 ~= uint.u8(0) then
    print("\tFail: a8 >> a8 ~= 0")
    fail = true
end

if b8 >> 4 ~= uint.u8(8) then
    print("\tFail: b8 >> 4 ~= 8")
    fail = true
end

if (9923 >> c8):asnumber() ~= 0 then
    print("\tFail: 9 >> c8 ~= 0")
    fail = true
end

if not fail then
    print("\tPass")
end
