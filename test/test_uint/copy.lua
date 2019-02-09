local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: copy...")

local r = a8:copy()
if r ~= a8 then
    print("\tFail: r ~= a8")
    fail = true
end

r = r + 7
if r == a8 then
    print("\tFail: r == a8")
    fail = true
end

if a8 ~= uint.u8(19) then
    print("\tFail: a8 ~= 19")
    fail = true
end

if not fail then
    print("\tPass")
end
