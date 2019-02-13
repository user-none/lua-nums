local fail = false

print("Test: set...")

local q = bn(44)

q:set(a)
if q ~= a then
    print("\tFail: q == a")
    fail = true
end

q = q + 12
if q == a then
    print("\tFail: q + 12 == a")
    fail = true
end

q:set(b)
if q ~= b then
    print("\tFail: q == b")
    fail = true
end

q:set(ne)
if q ~= ne then
    print("\tFail: q == ne")
    fail = true
end

q = q * 3
if q == ne then
    print("\tFail: q * 3 == ne")
    fail = true
end

q:set(7)
if (q ~= bn(7)) then
    print("\tFail: q == 7")
    fail = true
end

q:set(10.41)
if (q ~= bn(10)) then
    print("\tFail: q == 10.41")
    fail = true
end

q:set("808")
if (q ~= bn(808)) then
    print("\tFail: q == 808")
    fail = true
end

q:set("909.99")
if (q ~= bn(909)) then
    print("\tFail: q == 909")
    fail = true
end

q:set("0x8F3B")
if (q ~= bn("0x8F3B")) then
    print("\tFail: q == 8F3B")
    fail = true
end

q:set(0xFF72)
if (q ~= bn(0xFF72)) then
    print("\tFail: q == 0xFF72")
    fail = true
end

q:set(0)
if (q ~= bn.ZERO) then
    print("\tFail: q == 0")
    fail = true
end

if (q ~= bn()) then
    print("\tFail: q == bn()")
    fail = true
end

q:set(nil)
if (q ~= bn.ZERO) then
    print("\tFail: q == 0 (set(nil))")
    fail = true
end

if not fail then
    print("\tPass")
end

