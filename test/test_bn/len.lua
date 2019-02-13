local fail = false

print("Test: len...")

if #a ~= 4 then
    print("\tFail: #a")
    fail = true
end

if #na ~= 4 then
    print("\tFail: #na")
    fail = true
end

if #b ~= 12 then
    print("\tFail: #b")
    fail = true
end

if #c ~= 4 then
    print("\tFail: #c")
    fail = true
end

if #ne ~= 12 then
    print("\tFail: #ne")
    fail = true
end

if #nf ~= 12 then
    print("\tFail: #nf")
    fail = true
end

if f:len_bits() ~= 64 then
    print("\tFail: f:len_bits()")
    fail = true
end

if nf:len_bits() ~= 64 then
    print("\tFail: nf:len_bits()")
    fail = true
end

if b:len_bits() ~= 87 then
    print("\tFail: b:len_bits()")
    fail = true
end

if c:len_bits() ~= 9 then
    print("\tFail: c:len_bits()")
    fail = true
end

if c:len_bits() ~= 9 then
    print("\tFail: c:len_bits()")
    fail = true
end

if f:len_bytes() ~= 8 then
    print("\tFail: f:len_bytes()")
    fail = true
end

if nf:len_bytes() ~= 8 then
    print("\tFail: nf:len_bytes()")
    fail = true
end

if b:len_bytes() ~= 11 then
    print("\tFail: b:len_bytes()")
    fail = true
end

if c:len_bytes() ~= 2 then
    print("\tFail: c:len_bytes()")
    fail = true
end

if c:len_bytes() ~= 2 then
    print("\tFail: c:len_bytes()")
    fail = true
end

if f:len_digits() ~= 20 then
    print("\tFail: f:len_digits()")
    fail = true
end

if nf:len_digits() ~= 20 then
    print("\tFail: nf:len_digits()")
    fail = true
end

if b:len_digits() ~= 27 then
    print("\tFail: b:len_digits()")
    fail = true
end

if not fail then
    print("\tPass")
end

