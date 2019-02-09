local fail = false

print("Test: and...")

if a & a ~= bn("255") then
    print("\tFail: a & a")
    fail = true
end

if a & na ~= bn("255") then
    print("\tFail: a & na")
    fail = true
end

if b & a ~= bn("135") then
    print("\tFail: b & a")
    fail = true
end

if nf & ne ~= bn("11999999999999999999") then
    print("\tFail: nf & ne")
    fail = true
end

if na & c ~= bn(0) then
    print("\tFail: na & c")
    fail = true
end

if nc & a ~= bn(0) then
    print("\tFail: nc & a")
    fail = true
end

if nf & ne & b ~= bn("11531625347498855303") then
    print("\tFail: nf & ne & b")
    fail = true
end

if not fail then
    print("\tPass")
end
