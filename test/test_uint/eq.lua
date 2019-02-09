local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: eq...")

if a8 == uint.u8(8) then
    print("\tFail: a8 == 8")
    fail = true
end

if a8 < 8 then
    print("\tFail: a8 <= 8")
    fail = true
end

if not (uint.u8(8) <= a8) then
    print("\tFail: 8 <= a8")
    fail = true
end

if a8 ~= a8 then
    print("\tFail: a8 ~= a8")
    fail = true
end

if not (a8 <= a8) then
    print("\tFail: a8 <= a8")
    fail = true
end

if not (a8 >= a8) then
    print("\tFail: a8 >= a8")
    fail = true
end

if not (uint.u32(a8):asnumber() == 19) then
    print("\tFail: uint.u32(a8):asnumber() == 19")
    fail = true
end

if not (uint.u32(a8) == uint.u32(a8)) then
    print("\tFail: uint.u32(a8) == uint.u32(a8)")
    fail = true
end

if not (uint.u32(a8) < uint.u32(b8)) then
    print("\tFail: uint.u32(a8) >= uint.u32(b8)")
    fail = true
end

if not (uint.u32(a8) <= uint.u32(b8)) then
    print("\tFail: uint.u32(a8) <= uint.u32(b8)")
    fail = true
end

if not (b8 > a8) then
    print("\tFail: not b8 > a8")
    fail = true
end

if not (b8 >= a8) then
    print("\tFail: not b8 >= a8")
    fail = true
end

if not fail then
    print("\tPass")
end
