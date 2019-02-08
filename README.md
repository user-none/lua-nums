Lua-nums
========

Pure Lua number library providing BigNum and fixed width unsigned integer types.

BigNum (Infinite Precision)
---------------------------

A simple BigNum implementation that supports all mathematic metatable
functions.

This is pure Lua and is not designed to be the fastest possible BigNum library
in the world. The algorithms chosen are simple and easily understandable.
However, this doesn't mean the most inefficient are used. There is a balance
between performance and easily understood algorithms.

Rounding is using truncation (round toward 0) which is consistent with
libraries such as GMP and libtommath. This is different than Python (or Lua)
which round toward negative infinity.

It's pure Lua so it's slow when compared to other scripting
languages because most of them use a C BigNum library underneath.

Fixed Width
-----------

Fixed width unsigned integers that support C style integer wrapping.

There are two different modules that use a different backing number type The
API for each module is nearly identical with uintb providing a few extra
functions. That said, they are designed to be used interchangeably.

### uintn

Backed by Lua's number type.

- Advantage
  - Faster than uintb.
- Disadvantage
  - Assumes Lua's number type (internal integer type) is at least 64 bit
    signed.
  - Limited width.

### uintb

Backed by the bn (BigNum) module. This allows for very large fixed width
numbers. In addition to the 8-32 bit numbers it provides initializers for 64,
128, and 512 bit numbers. Since it's backed by a BigNum there is a generic
new function which can specify the width in bits.

- Advantage
  - Can hand absurdly large widths.
  - Works when Lua is built with a number type that's smaller than 64 bit. 
- Disadvantage
  - Slower than uintn. About 5x slower.

Testing
-------

The test directory provides tests for all modules. test_uint has two entry
points, test_uintb.lua and test_uintn.lua. All of the tests are shared
between these two and they test the two different backends.

Tests can be run directly from the test directory  like so:

    $ cd test
    $ LUA_PATH="../?.lua;./?.lua;" lua5.3 test_bn.lua

