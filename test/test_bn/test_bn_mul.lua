local fail = false

print("Test: mul...")

if bn(0) * 1 ~= bn(0) then
    print("\tFail: 0 * 1")
    fail = true
end

if bn(0) * a ~= bn(0) then
    print("\tFail: 0 * a")
    fail = true
end

if a * a ~= bn("65025") then
    print("\tFail: a * a")
    fail = true
end

if a * na ~= bn("-65025") then
    print("\tFail: a * na")
    fail = true
end

if b * a ~= bn("31481481198148148119814814585") then
    print("\tFail: b * a")
    fail = true
end

if nf * ne ~= bn("561643295805453082806481119284349108225L") then
    print("\tFail: nf * ne")
    fail = true
end

if na * c ~= bn(-65280) then
    print("\tFail: na * c")
    fail = true
end

if nc * a ~= bn(-65280) then
    print("\tFail: nc * a")
    fail = true
end

if nf * ne * b ~= bn("69338677870452274080484494284088296390150310386638719977994013575") then
    print("\tFail: nf * ne * b")
    fail = true
end

if not fail then
    print("\tPass")
end
