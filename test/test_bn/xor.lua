local fail = false

print("Test: xor...")

if a ~ a ~= bn("0") then
    print("\tFail: a ~ a")
    fail = true
end

if a ~ na ~= bn.ZERO then
    print("\tFail: a ~ na")
    fail = true
end

if b ~ a ~= bn("123456789012345678901234552") then
    print("\tFail: b ~ a")
    fail = true
end

if nf ~ ne ~= bn("24893488147419103232") then
    print("\tFail: nf ~ ne")
    fail = true
end

if na ~ c ~= bn(511) then
    print("\tFail: na ~ c")
    fail = true
end

if nc ~ a ~= bn("511") then
    print("\tFail: nc ~ a")
    fail = true
end

if nf ~ ne ~ b ~= bn("123456765293762843482475399") then
    print("\tFail: nf ~ ne ~ b")
    fail = true
end

if not fail then
    print("\tPass")
end
