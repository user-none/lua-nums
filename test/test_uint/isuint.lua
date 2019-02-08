local fail = false

print("Test: isuint...")

if not uint.isuint(a8) then
    print("\tFail: isuint(a8)")
    fail = true
end

if not uint.isuint(b32) then
    print("\tFail: isuint(b32)")
    fail = true
end

if not fail then
    print("\tPass")
end
