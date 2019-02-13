bn = require("nums.bn")

a = bn(255)
b = bn("123456789012345678901234567")
c = bn("256")
d = bn("765432109876543210987654321")
e = bn("30446744073709551615")
f = bn("18446744073709551615")
g = bn("40000000000000000000000000000000")
h = bn("40000000000000000000000000000001")

na = -a
nb = -b
nc = -c
nd = -d
ne = -e
nf = -f
ng = -g
nh = -h

require("test_bn.add")
require("test_bn.sub")
require("test_bn.mul")
require("test_bn.div")
require("test_bn.remain")
require("test_bn.mod")
require("test_bn.pow")
require("test_bn.unm")
require("test_bn.and")
require("test_bn.or")
require("test_bn.xor")
require("test_bn.not")
require("test_bn.lshift")
require("test_bn.rshift")
require("test_bn.concat")
require("test_bn.len")
require("test_bn.eq")
require("test_bn.output")
require("test_bn.abs")
require("test_bn.isbn")
require("test_bn.copy")
require("test_bn.set")
require("test_bn.compound")
