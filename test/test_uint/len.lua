local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: len...")

if #a8 ~= 8 then
    print("\tFail: #a8 ~= 8")
    fail = true
end

if #uint.u16(1000) ~= 16 then
    print("\tFail: #uint.u16(1000) ~= 16")
    fail = true
end

if #uint.u32() ~= 32 then
    print("\tFail: #uint.u32() ~= 32")
    fail = true
end

if not fail then
    print("\tPass")
end
