local fail = false

print("Test: mod...")

if a8%b8 ~= uint.u8(19) then
    print("\tFail: a8%b8 ~= 19")
    fail = true
end

if -b8%a8 ~= uint.u8(0) then
    print("\tFail: -b8/a8 ~= 0")
    fail = true
end

if -a8%b8 ~= uint.u8(95) then
    print("\tFail: -a8%b8 ~= 95")
    fail = true
end

if -a8%-b8 ~= uint.u8(9) then
    print("\tFail: -a8%-b8 ~= 9")
    fail = true
end

if -b8%-a8 ~= uint.u8(114) then
    print("\tFail: -b8%-a8 ~= 114")
    fail = true
end

if a8%237 ~= uint.u8(19) then
    print("\tFail: a8%237 ~= 19")
    fail = true
end

if a8%238 ~= uint.u8(19) then
    print("\tFail: a8%238 ~= 19")
    fail = true
end

if 237%a8 ~= uint.u8(9) then
    print("\tFail: 237%a8 ~= 9")
    fail = true
end

if 238%a8 ~= uint.u8(10) then
    print("\tFail: 238%a8 ~= 10")
    fail = true
end

if 237%-a8 ~= uint.u8(0) then
    print("\tFail: 237%-a8 ~= 0")
    fail = true
end

if 238%-a8 ~= uint.u8(1) then
    print("\tFail: 238%-a8 ~= 1")
    fail = true
end

if not fail then
    print("\tPass")
end
