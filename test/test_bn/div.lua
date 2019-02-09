local env = require "test_bn.common"()
local bn, a,b,c,d,e,f,g,h, na,nb,nc,nd,ne,nf,ng,nh = (table.unpack or unpack)(env)

local fail = false

print("Test: div...")

if a / a ~= bn("1") then
    print("\tFail: a / a")
    fail = true
end

if a // na ~= bn("-1") then
    print("\tFail: a / na")
    fail = true
end

if b / a ~= bn("484144270636649721181312") then
    print("\tFail: b / a")
    fail = true
end

if nf // ne ~= bn(0) then
    print("\tFail: nf / ne")
    fail = true
end

if na / c ~= bn("") then
    fail = true
end

if nc // a ~= bn(-1) then
    print("\tFail: nc / a")
    fail = true
end

if b / d ~= bn(0) then
    print("\tFail: b / d")
    fail = true
end

if d // b ~= bn(6) then
    print("\tFail: d / b")
    fail = true
end

if d // e ~= bn("0000025140031") then
    print("\tFail: d / e")
    fail = true
end

if nf / ne // b ~= bn("0") then
    print("\tFail: nf / ne / b")
    fail = true
end

if not fail then
    print("\tPass")
end
