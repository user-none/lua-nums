local fail = false

print("Test: add...")

if a8:asnumber() ~= 19 then
    print("\tFail: a8 ~= 19")
    fail = true
end

if b8:asnumber() ~= 142 then
    print("\tFail: a8 ~= 142")
    fail = true
end

if a8+b8 ~= uint.u8(161) then
    print("\tFail: a8+b8 ~= 161")
    fail = true
end

if a8+237 ~= uint.u8(0) then
    print("\tFail: a8+237 ~= 0")
    fail = true
end

if a8+238 ~= uint.u8(1) then
    print("\tFail: a8+238 ~= 1")
    fail = true
end

if -237+a8 ~= uint.u8(38) then
    print("\tFail: -237+a8 ~= 38")
    fail = true
end

if a8+-b8 ~= uint.u8(133) then
    print("\tFail: a8+-b8 ~= 133")
    fail = true
end

if not fail then
    print("\tPass")
end
