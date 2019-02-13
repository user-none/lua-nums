local fail = false

print("Test: output...")

if tostring(a32) ~= "6000" then
    print("\tFail: a32 ~= 6000")
    fail = true
end

if tostring(b32) ~= "9" then
    print("\tFail: b32 ~= 9")
    fail = true
end

if tostring(c32) ~= "12345678" then
    print("\tFail: c32 ~= 12345678")
    fail = true
end


if a32:ashex():upper() ~= "1770" then
    print("\tFail: a32:ashex() ~= 1770")
    fail = true
end

if a32:ashex(2):upper() ~= "1770" then
    print("\tFail: a32:ashex(2) ~= 1770")
    fail = true
end

if b32:ashex():upper() ~= "9" then
    print("\tFail: b32:ashex() ~= 9")
    fail = true
end

if c32:ashex():upper() ~= "BC614E" then
    print("\tFail: c32:ashex() ~= BC614E")
    fail = true
end

if c32:ashex(10):upper() ~= "0000BC614E" then
    print("\tFail: c32:ashex(10) ~= 0000BC614E")
    fail = true
end

if a32:asnumber() ~= 6000 then
    print("\tFail: a32:asnumber() ~= 6000")
    fail = true
end

if b32:asnumber() ~= 9 then
    print("\tFail: b32:asnumber() ~= 255")
    fail = true
end

if c32:asnumber() ~= 12345678 then
    print("\tFail: c32:asnumber() ~= 12345678")
    fail = true
end

local function verify_ba(ba1, ba2)
    if #ba1 ~= #ba2 then
        return false
    end
    for i=1,#ba1 do
        if ba1[i] ~= ba2[i] then
            return false
        end
    end
    return true
end

local ba = { 0x00, 0x00, 0x17, 0x70 }
if not verify_ba(a32:asbytearray(), ba) then
    print("\tFail: a32:asbytearray()")
    fail = true
end

local ba = { 0x00, 0x00, 0x00, 0x9 }
if not verify_ba(b32:asbytearray(), ba) then
    print("\tFail: b32:asbytearray()")
    fail = true
end

local ba = { 0x00, 0xBC, 0x61, 0x4E }
if not verify_ba(c32:asbytearray(), ba) then
    print("\tFail: c32:asbytearray()")
    fail = true
end

local function ba_to_bs(ba)
    local bs = ""
    for i=1,#ba do
        bs = bs..string.char(ba[i])
    end
    return bs
end

local ba = { 0x00, 0x00, 0x17, 0x70 }
if a32:asbytestring() ~= ba_to_bs(a32:asbytearray()) then
    print("\tFail: a32:asbytestring()")
    fail = true
end

local ba = { 0x00, 0x00, 0x00, 0x9 }
if b32:asbytestring() ~= ba_to_bs(b32:asbytearray()) then
    print("\tFail: b32:asbytestring()")
    fail = true
end

local ba = { 0x00, 0xBC, 0x61, 0x4E }
if c32:asbytestring() ~= ba_to_bs(c32:asbytearray()) then
    print("\tFail: c32:asbytestring()")
    fail = true
end

local ba = { 0x70, 0x17, 0x00, 0x00 }
if not verify_ba(a32:swape():asbytearray(), ba) then
    print("\tFail: a32:swape():asbytearray()")
    fail = true
end

local ba = { 0x9, 0x00, 0x00, 0x00 }
if not verify_ba(b32:swape():asbytearray(), ba) then
    print("\tFail: b32:swape():asbytearray()")
    fail = true
end

local ba = { 0x4E, 0x61, 0xBC, 0x00 }
if not verify_ba(c32:swape():asbytearray(), ba) then
    print("\tFail: c32:swape():asbytearray()")
    fail = true
end

if not fail then
    print("\tPass")
end
