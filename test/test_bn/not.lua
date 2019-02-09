local fail = false

print("Test: not...")

if ~a ~= bn("-256") then
    print("\tFail: ~a")
    fail = true
end

if ~na ~= bn(254) then
    print("\tFail: ~na")
    fail = true
end

if ~b ~= bn("-123456789012345678901234568L") then
    print("\tFail: b ~ a")
    fail = true
end

if ~ne ~= bn("30446744073709551614") then
    print("\tFail: nf ~ ne")
    fail = true
end

if ~c ~= bn(-257) then
    print("\tFail: na ~ c")
    fail = true
end

if ~nc ~= bn("255") then
    print("\tFail: nc ~ a")
    fail = true
end

if not fail then
    print("\tPass")
end
