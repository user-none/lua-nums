package = "lua-nums"
version = "scm-1"

source = {
    url = "git://github.com/user-none/lua-nums.git"
}

description = {
    summary    = "Pure Lua number library providing BigNum and fixed width unsigned integer types",
    homepage   = "https://github.com/user-none/lua-nums.git",
    license    = "MIT/X11",
    maintainer = "John Schember <john@nachtimwald.com>"
}

dependencies = {
    "lua >= 5.3"
}

build = {
    type    = "builtin",
    modules = {
        ["nums"]       = "nums/init.lua",
        ["nums.bn"]    = "nums/bn.lua",
        ["nums.uintn"] = "nums/uintn.lua",
        ["nums.uintb"] = "nums/uintb.lua"
    }
}
