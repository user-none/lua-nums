local fail = false

print("Test: and...")

if 40031&a8 ~= uint.u8(19) then
    print("\tFail: 40031&a8 ~= 19")
    fail = true
end

if b8&c8 ~= uint.u8(142) then
    print("\tFail: b8&c8 ~= 142")
    fail = true
end

if (c8&b8):asnumber() ~= 142 then
    print("\tFail: c8b8 ~= 142")
    fail = true
end

if not fail then
    print("\tPass")
end
