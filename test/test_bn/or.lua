local fail = false

print("Test: or...")

if a | a ~= bn("255") then
    print("\tFail: a | a")
    fail = true
end

if a | na ~= bn("255") then
    print("\tFail: a | na")
    fail = true
end

if b | a ~= bn("123456789012345678901234687") then
    print("\tFail: b | a")
    fail = true
end

if nf | ne ~= bn("36893488147419103231") then
    print("\tFail: nf | ne")
    fail = true
end

if na | c ~= bn(511) then
    print("\tFail: na | c")
    fail = true
end

if nc | a ~= bn("511") then
    print("\tFail: nc | a")
    fail = true
end

if nf | ne | b ~= bn("123456790068172987402551295L") then
    print("\tFail: nf | ne | b")
    fail = true
end

if not fail then
    print("\tPass")
end
