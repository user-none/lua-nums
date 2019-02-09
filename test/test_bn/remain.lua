local fail = false

print("Test: remain...")

if a:remain(a) ~= bn("0") then
    print("\tFail: a R a")
    fail = true
end

if a:remain(na) ~= bn("0") then
    print("\tFail: a R na")
    fail = true
end

if b:remain(a) ~= bn("7") then
    print("\tFail: b R a")
    fail = true
end

if nf:remain(ne) ~= nf then
    print("\tFail: nf R ne")
    fail = true
end

if na:remain(c) ~= bn(na) then
    print("\tFail: na R c")
    fail = true
end

if nc:remain(a) ~= bn(-1) then
    print("\tFail: nc R a")
    fail = true
end

if b:remain(d) ~= bn("123456789012345678901234567L") then
    print("\tFail: b R d")
    fail = true
end

if d:remain(b) ~= bn("24691375802469137580246919") then
    print("\tFail: d R b")
    fail = true
end

if d:remain(e) ~= bn("0000020014418798390454256L") then
    print("\tFail: d R e")
    fail = true
end

if nf:remain(ne):remain(b) ~= bn("-18446744073709551615") then
    print("\tFail: nf R ne R b")
    fail = true
end

if not fail then
    print("\tPass")
end
