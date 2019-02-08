local fail = false

print("Test: unm...")

if -a ~= a*-1 then
    print("\tFail: -a")
    fail = true
end

if -na ~= a then
    print("\tFail: -na")
    fail = true
end

if -b ~= bn("-123456789012345678901234567") then
    print("\tFail: -b")
    fail = true
end

if -nf ~= nf*-1 then
    print("\tFail: -nf")
    fail = true
end

if not fail then
    print("\tPass")
end

