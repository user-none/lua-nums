local fail = false

print("Test: len...")

if #a8 ~= 8 then
    print("\tFail: #a8 ~= 8")
    fail = true
end

if #uint.u16(1000) ~= 16 then
    print("\tFail: #uint.u16(1000) ~= 16")
    fail = true
end

if #uint.u32() ~= 32 then
    print("\tFail: #uint.u32() ~= 32")
    fail = true
end

if not fail then
    print("\tPass")
end
