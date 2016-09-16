local fail = false

print("Test: or...")

if 40031|a8 ~= uint.u8(95) then
    print("\tFail: 40031|a8 ~= 95")
    fail = true
end

if b8|c8 ~= uint.u8(254) then
    print("\tFail: b8|c8 ~= 254")
    fail = true
end

if (c8|255):asnumber() ~= 255 then
    print("\tFail: c8|255 ~= 255")
    fail = true
end

if not fail then
    print("\tPass")
end
