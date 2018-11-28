local fail = false

print("Test: add...")

if a + a ~= bn("510") then
    print("\tFail: a + a")
    fail = true
end

if a + na ~= bn.ZERO then
    print("\tFail: a + na")
    fail = true
end

if b + a ~= bn("123456789012345678901234822") then
    print("\tFail: b + a")
    fail = true
end

if nf + ne ~= bn("-48893488147419103230") then
    print("\tFail: nf + ne")
    fail = true
end

if na + c ~= bn(1) then
    print("\tFail: na + c")
    fail = true
end

if nc + a ~= bn(-1) then
    print("\tFail: nc + a")
    fail = true
end

if nf + ne + b ~= bn("123456740118857531482131337") then
    print("\tFail: nf + ne + b")
    fail = true
end

if g + 1 ~= h then
    print("\tFail: g + 1")
    fail = true
end

if not fail then
    print("\tPass")
end
