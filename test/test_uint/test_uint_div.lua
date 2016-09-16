local fail = false

print("Test: div...")

-- C would need some nasty casting to keep everything as an 8bit
-- integer: (unsigned char)((unsigned char)(-b)/(unsigned char)(a))

if a8/b8 ~= uint.u8(0) then
    print("\tFail: a8/b8 ~= 0")
    fail = true
end

if -b8/a8 ~= uint.u8(6) then
    print("\tFail: -b8/a8 ~= 249")
    fail = true
end

if -a8/b8 ~= uint.u8(1) then
    print("\tFail: -a8/b8 ~= 1")
    fail = true
end

if -a8/-b8 ~= uint.u8(2) then
    print("\tFail: -a8/-b8 ~= 2")
    fail = true
end

if -b8/-a8 ~= uint.u8(0) then
    print("\tFail: -b8/-a8 ~= 0")
    fail = true
end

if a8/237 ~= uint.u8(0) then
    print("\tFail: a8/237 ~= 0")
    fail = true
end

if a8/238 ~= uint.u8(0) then
    print("\tFail: a8/238 ~= 0")
    fail = true
end

if 237/a8 ~= uint.u8(12) then
    print("\tFail: 237/a8 ~= 12")
    fail = true
end

if 238/a8 ~= uint.u8(12) then
    print("\tFail: 238/a8 ~= 12")
    fail = true
end

if 237/-a8 ~= uint.u8(1) then
    print("\tFail: 237/-a8 ~= 1")
    fail = true
end

if 238/-a8 ~= uint.u8(1) then
    print("\tFail: 238/-a8 ~= 1")
    fail = true
end

if not fail then
    print("\tPass")
end
