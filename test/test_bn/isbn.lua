local fail = false

print("Test: isbn...")

if bn.isbn(a) == false then
    print("\tFail: a")
    fail = true
end

if bn.isbn(ne) == false then
    print("\tFail: ne")
    fail = true
end

if bn.isbn(7) then
    print("\tFail: 7")
    fail = true
end

if bn.isbn({}) then
    print("\tFail: {}")
    fail = true
end

if bn.isbn({ 0 }) then
    print("\tFail: { 0 }")
    fail = true
end

if bn.isbn("123") then
    print("\tFail: \"123\"")
    fail = true
end


if not fail then
    print("\tPass")
end


