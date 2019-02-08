local fail = false

print("Test: unm...")

if -a8 ~= uint.u8(237) then
    print("\tFail: -a8 ~= 237")
    fail = true
end

if -b8 ~= uint.u8(114) then
    print("\tFail: -b8 ~= 114")
    fail = true
end

if -c8 ~= uint.u8(2) then
    print("\tFail: -c8 ~= 2")
    fail = true
end

if not fail then
    print("\tPass")
end
