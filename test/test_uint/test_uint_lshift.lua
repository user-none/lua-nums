local fail = false

print("Test: lshift...")

if a8 << a8 ~= uint.u8(0) then
    print("\tFail: a8 << a8 ~= 0")
    fail = true
end

if b8 << 4 ~= uint.u8(224) then
    print("\tFail: b8 << 4 ~= 224")
    fail = true
end

if (9 << c8):asnumber() ~= 0 then
    print("\tFail: 9 << c8 ~= 0")
    fail = true
end

if not fail then
    print("\tPass")
end
