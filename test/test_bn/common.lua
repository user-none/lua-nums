return function(bn)
	if bn==nil then bn = require("nums.bn") end
	local a,b,c,d,e,f,g,h, na,nb,nc,nd,ne,nf,ng,nh

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

	local env = {bn, a,b,c,d,e,f,g,h, na,nb,nc,nd,ne,nf,ng,nh}

	return env
end
