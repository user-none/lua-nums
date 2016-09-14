bn = require("bn")

a = bn(255)
b = bn("123456789012345678901234567")
c = bn("256")
d = bn("765432109876543210987654321")
e = bn("30446744073709551615")
f = bn("18446744073709551615")

na = -a
nb = -b
nc = -c
nd = -d
ne = -e
nf = -f

require("test_bn_add")
require("test_bn_sub")
require("test_bn_mul")
require("test_bn_div")
require("test_bn_remain")
require("test_bn_mod")
require("test_bn_pow")
require("test_bn_unm")
require("test_bn_and")
require("test_bn_or")
require("test_bn_xor")
require("test_bn_not")
require("test_bn_lshift")
require("test_bn_rshift")
require("test_bn_concat")
require("test_bn_len")
require("test_bn_eq")
require("test_bn_output")
require("test_bn_abs")
require("test_bn_isbn")
require("test_bn_copy")
require("test_bn_compound")
