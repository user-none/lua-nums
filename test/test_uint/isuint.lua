local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: isuint...")

if not uint.isuint(a8) then
    print("\tFail: isuint(a8)")
    fail = true
end

if not uint.isuint(b32) then
    print("\tFail: isuint(b32)")
    fail = true
end

if not fail then
    print("\tPass")
end
