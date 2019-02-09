local fail = false

print("Test: xor...")

if 40031~a8 ~= uint.u8(76) then
    print("\tFail: 40031~a8 ~= 76")
    fail = true
end

if b8~c8 ~= uint.u8(112) then
    print("\tFail: b8~c8 ~= 112")
    fail = true
end

if (c8~255):asnumber() ~= 1 then
    print("\tFail: c8~255 ~= 1")
    fail = true
end

if not fail then
    print("\tPass")
end
