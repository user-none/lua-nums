local fail = false

print("Test: pow...")

if a8^3 ~= uint.u8(203) then
    print("\tFail: a8^3 ~= 203")
    fail = true
end

if 3^a8 ~= uint.u8(219) then
    print("\tFail: 3^a8 ~= 219")
    fail = true
end

if 5^(-c8) ~= uint.u8(25) then
    print("\tFail: 5^(-c8) ~= 25")
    fail = true
end

if (-b8)^2 ~= uint.u8(196) then
    print("\tFail: (-b8)^2 ~= 196")
    fail = true
end

if not fail then
    print("\tPass")
end

