local fail = false

print("Test: eq...")

if a:asnumber() ~= 255 then
    print("\tFail: a:asnumber() =")
    fail = true
end

if a ~= bn("255") then
    print("\tFail: a =")
    fail = true
end

if a == na then
    print("\tFail: a == na")
    fail = true
end

if na >= a then
    print("\tFail: na >= a")
    fail = true
end

if na > a then
    print("\tFail: na > a")
    fail = true
end

if a <= na then
    print("\tFail: a <= na")
    fail = true
end

if a < na then
    print("\tFail: a < na")
    fail = true
end

if not (a >= a) then
    print("\tFail: not a >= a")
    fail = true
end

if not (a <= bn("000255L")) then
    print("\tFail: not a <= 000255L")
    fail = true
end

if b ~= bn("123456789012345678901234567") then
    print("\tFail: b =")
    fail = true
end

if b == nb then
    print("\tFail: b == nb")
    fail = true
end

if nb >= b then
    print("\tFail: nb >= b")
    fail = true
end

if nb > b then
    print("\tFail: nb > b")
    fail = true
end

if b <= nb then
    print("\tFail: b <= nb")
    fail = true
end

if b < nb then
    print("\tFail: b < nb")
    fail = true
end

if not (b >= b) then
    print("\tFail: not b >= b")
    fail = true
end

if not (b <= bn("000123456789012345678901234567L")) then
    print("\tFail: not b <= 000255L")
    fail = true
end

if not fail then
    print("\tPass")
end
