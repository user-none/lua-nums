local fail = false

print("Test: mul...")

if a8*b8 ~= uint.u8(138) then
    print("\tFail: a8*b8 ~= 138")
    fail = true
end

if -b8*a8 ~= uint.u8(118) then
    print("\tFail: -b8*a8 ~= 118")
    fail = true
end

if -a8*b8 ~= uint.u8(118) then
    print("\tFail: -a8-b8 ~= 95")
    fail = true
end

if -a8*-b8 ~= uint.u8(138) then
    print("\tFail: -a8-b8 ~= 95")
    fail = true
end

if a8*237 ~= uint.u8(151) then
    print("\tFail: a8*237 ~= 151")
    fail = true
end

if a8*238 ~= uint.u8(170) then
    print("\tFail: a8*238 ~= 170")
    fail = true
end

if 237*-a8 ~= uint.u8(105) then
    print("\tFail: 237*-a8 ~= 105")
    fail = true
end

if not fail then
    print("\tPass")
end
