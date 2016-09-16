local fail = false

print("Test: mod...")

if a % a ~= bn("0") then
    print("\tFail: a % a")
    fail = true
end

if a % na ~= bn("0") then
    print("\tFail: a % na")
    fail = true
end

if b % a ~= bn("7") then
    print("\tFail: b % a")
    fail = true
end

if nf % ne ~= nf then
    print("\tFail: nf % ne")
    fail = true
end

if na % c ~= bn(1) then
    print("\tFail: na % c")
    fail = true
end

if nc % a ~= bn(254) then
    print("\tFail: nc % a")
    fail = true
end

if b % d ~= bn("123456789012345678901234567L") then
    print("\tFail: b % d")
    fail = true
end

if d % b ~= bn("24691375802469137580246919") then
    print("\tFail: d % b")
    fail = true
end

if d % e ~= bn("0000020014418798390454256L") then
    print("\tFail: d % e")
    fail = true
end

if nf % ne % b ~= bn("123456770565601605191682952") then
    print("\tFail: nf % ne % b")
    fail = true
end

if not fail then
    print("\tPass")
end
