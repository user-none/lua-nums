local fail = false

print("Test: compound...")

if nf + -12 + 10 ~= bn("-18446744073709551617") then
    print("\tFail: nf + -12 + 10")
    fail = true
end

if nf + e + b + a - 12  ~= bn("123456801012345678901234810") then
    print("\tFail: nf + e + b + a - 12")
    fail = true
end

if nf * ne + b - a ~= bn("561643295805576539595493464963250342537") then
    print("\tFail: nf * ne + b - a")
    fail = true
end

if (nf * ne + b - a) / a ~= bn("2202522728649319763119582215542158206L") then
    print("\tFail: (nf * ne + b - a) / a")
    fail = true
end

if ((nf * ne + b - a) / a) % 142 ~= bn("90") then
    print("\tFail: ((nf * ne + b - a) / a) % 142")
    fail = true
end

if (((nf * ne + b - a) / a) % 142):remain(19) ~= bn("14") then
    print("\tFail: (((nf * ne + b - a) / a) % 142) R 19")
    fail = true
end

if not fail then
    print("\tPass")
end
