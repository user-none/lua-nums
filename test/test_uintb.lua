uint = require("nums.uintb")

a8 = uint.u8(19)
b8 = uint.u8(142)
c8 = uint.u8(254)

a32 = uint.u32(6000)
b32 = uint.u32(9)
c32 = uint.u32(12345678)

require("test_uint.add")
require("test_uint.sub")
require("test_uint.mul")
require("test_uint.div")
require("test_uint.mod")
require("test_uint.pow")
require("test_uint.unm")
require("test_uint.and")
require("test_uint.or")
require("test_uint.xor")
require("test_uint.not")
require("test_uint.lshift")
require("test_uint.rshift")
require("test_uint.concat")
require("test_uint.len")
require("test_uint.eq")
require("test_uint.output")
require("test_uint.isuint")
require("test_uint.copy")
