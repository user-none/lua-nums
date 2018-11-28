local fail = false

print("Test: sub...")

if a - a ~= bn("0") then
    print("\tFail: a - a")
    fail = true
end

if a - na ~= bn(510) then
    print("\tFail: a - na")
    fail = true
end

if b - a ~= bn("123456789012345678901234312L") then
    print("\tFail: b - a")
    fail = true
end

if nf - ne ~= bn("12000000000000000000") then
    print("\tFail: nf - ne")
    fail = true
end

if na - c ~= bn(-511) then
    print("\tFail: na - c")
    fail = true
end

if nc - a ~= bn(-511) then
    print("\tFail: nc - a")
    fail = true
end

if nf - ne - b ~= bn("-123456777012345678901234567L") then
    print("\tFail: nf - ne - b")
    fail = true
end

if h - 1 ~= g then
    print("\tFail: h - 1")
    fail = true
end

if not fail then
    print("\tPass")
end
