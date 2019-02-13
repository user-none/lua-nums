local fail = false

print("Test: output...")

if tostring(a) ~= "255" then
    print("\tFail: a ~= 255")
    fail = true
end

if tostring(b) ~= "123456789012345678901234567" then
    print("\tFail: b ~= 123456789012345678901234567")
    fail = true
end

if tostring(c) ~= "256" then
    print("\tFail: c ~= 256")
    fail = true
end

if tostring(d) ~= "765432109876543210987654321" then
    print("\tFail: d ~= 765432109876543210987654321")
    fail = true
end

if tostring(e) ~= "30446744073709551615" then
    print("\tFail: e ~= 30446744073709551615")
    fail = true
end

if tostring(f) ~= "18446744073709551615" then
    print("\tFail: f ~= 18446744073709551615")
    fail = true
end

if a:ashex():upper() ~= "FF" then
    print("\tFail: a:ashex() ~= FF")
    fail = true
end

if a:ashex(7):upper() ~= "00000FF" then
    print("\tFail: a:ashex(7) ~= 00000FF")
    fail = true
end

if b:ashex():upper() ~= "661EFDF158F2A82C9F4B87" then
    print("\tFail: b:ashex() ~= 661EFDF158F2A82C9F4B87")
    fail = true
end

if b:ashex(2):upper() ~= "661EFDF158F2A82C9F4B87" then
    print("\tFail: b:ashex(2) ~= 661EFDF158F2A82C9F4B87")
    fail = true
end

if c:ashex():upper() ~= "100" then
    print("\tFail: c:ashex() ~= 100")
    fail = true
end

if d:ashex():upper() ~= "279268DD22785E811C70CB1" then
    print("\tFail: d:ashex() ~= 279268DD22785E811C70CB1")
    fail = true
end

if e:ashex():upper() ~= "1A688906BD8AFFFFF" then
    print("\tFail: e:ashex() ~= 1A688906BD8AFFFFF")
    fail = true
end

if f:ashex():upper() ~= "FFFFFFFFFFFFFFFF" then
    print("\tFail: f:ashex() ~= FFFFFFFFFFFFFFFF")
    fail = true
end

if nf:ashex():upper() ~= "-FFFFFFFFFFFFFFFF" then
    print("\tFail: nf:ashex() ~= -FFFFFFFFFFFFFFFF")
    fail = true
end

if nc:ashex(6):upper() ~= "-000100" then
    print("\tFail: nf:ashex() ~= -000100")
    fail = true
end

if a:asnumber() ~= 255 then
    print("\tFail: a:asnumber() ~= 255")
    fail = true
end

if na:asnumber() ~= -255 then
    print("\tFail: na:asnumber() ~= -255")
    fail = true
end

if c:asnumber() ~= 256 then
    print("\tFail: c:asnumber() ~= 256")
    fail = true
end

if nc:asnumber() ~= -256 then
    print("\tFail: nc:asnumber() ~= -256")
    fail = true
end

if d:asnumber() ~= nil then
    print("\tFail: d:asnumber() == nil")
    fail = true
end

if nd:asnumber() ~= nil then
    print("\tFail: nd:asnumber() == nil")
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

local ba = { 0x0FF }
if not verify_ba(a:asbytearray(), ba) then
    print("\tFail: a:asbytearray()")
    fail = true
end

local ba = { 0x66, 0x1E, 0xFD, 0xF1, 0x58, 0xF2, 0xA8, 0x2C, 0x9F, 0x4B, 0x87 }
if not verify_ba(b:asbytearray(), ba) then
    print("\tFail: b:asbytearray()")
    fail = true
end

local ba = { 0x01, 0x00  }
if not verify_ba(c:asbytearray(), ba) then
    print("\tFail: c:asbytearray()")
    fail = true
end

local ba = { 0x02, 0x79, 0x26, 0x8D, 0xD2, 0x27, 0x85, 0xE8, 0x11, 0xC7, 0x0C,  0xB1 }
if not verify_ba(d:asbytearray(), ba) then
    print("\tFail: d:asbytearray()")
    fail = true
end

local ba = { 0x01, 0xA6, 0x88, 0x90, 0x6B, 0xD8, 0xAF, 0xFF, 0xFF }
if not verify_ba(e:asbytearray(), ba) then
    print("\tFail: e:asbytearray()")
    fail = true
end

local ba = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }
if not verify_ba(f:asbytearray(), ba) then
    print("\tFail: f:asbytearray()")
    fail = true
end

local function ba_to_bs(ba)
    local bs = ""
    for i=1,#ba do
        bs = bs..string.char(ba[i])
    end
    return bs
end

local ba = { 0x01, 0x00 }
if a:asbytestring() ~= ba_to_bs(a:asbytearray()) then
    print("\tFail: a:asbytestring()")
    fail = true
end

local ba = { 0x66, 0x1E, 0xFD, 0xF1, 0x58, 0xF2, 0xA8, 0x2C, 0x9F, 0x4B, 0x87 }
if b:asbytestring() ~= ba_to_bs(b:asbytearray()) then
    print("\tFail: b:asbytestring()")
    fail = true
end

local ba = { 0x01, 0x00  }
if c:asbytestring() ~= ba_to_bs(c:asbytearray()) then
    print("\tFail: c:asbytestring()")
    fail = true
end

local ba = { 0x02, 0x79, 0x26, 0x8D, 0xD2, 0x27, 0x85, 0xE8, 0x11, 0xC7, 0x0C,  0xB1 }
if d:asbytestring() ~= ba_to_bs(d:asbytearray()) then
    print("\tFail: d:asbytestring()")
    fail = true
end

local ba = { 0x01, 0xA6, 0x88, 0x90, 0x6B, 0xD8, 0xAF, 0xFF, 0xFF }
if e:asbytestring() ~= ba_to_bs(e:asbytearray()) then
    print("\tFail: e:asbytestring()")
    fail = true
end

local ba = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }
if f:asbytestring() ~= ba_to_bs(f:asbytearray()) then
    print("\tFail: f:asbytestring()")
    fail = true
end

if not fail then
    print("\tPass")
end
