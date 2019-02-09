local env = require "test_uint.common"()
local uint, a8,b8,c8, a32,b32,c32 = (table.unpack or unpack)(env)

local fail = false

print("Test: concat...")

if a8..a8 ~= "1919" then
    print("\tFail: a8..a8 ~= 1919")
    fail = true
end

if tostring(4)..b8..tostring(4) ~= "41424" then
    print("\tFail: 4..b8..4 ~= 41424")
    fail = true
end

if c8.."=Test" ~= "254=Test" then
    print("\tFail: c8..=Test ~= 254=Test")
    fail = true
end

if not fail then
    print("\tPass")
end
