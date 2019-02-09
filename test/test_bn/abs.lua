local env = require "test_bn.common"()
local bn, a,b,c,d,e,f,g,h, na,nb,nc,nd,ne,nf,ng,nh = (table.unpack or unpack)(env)

local fail = false

print("Test: abs...")

if a:abs() ~= bn("255") then
    print("\tFail: a:abs()")
    fail = true
end

if na:abs() ~= a then
    print("\tFail: na:abs()")
    fail = true
end

if nb:abs() ~= bn("123456789012345678901234567") then
    print("\tFail: nb:abs()")
    fail = true
end

if not fail then
    print("\tPass")
end
