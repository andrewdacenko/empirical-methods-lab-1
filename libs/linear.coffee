# m = 4294967291; Most close prime number to 2^32
# m - modulus, m > 0
# a - multiplier, 0 <= a < m
# c - increment, 0 <= c < m
# x - start, 0 <= x < m
class LinearMethod
	constructor: (options = {m: 4294967291, a: 1664525, c: 1013904223, x: 127368123}) -> 
		@m = options.m 
		@a = options.a
		@c = options.c
		@x = options.x
	random: -> @x = (@a * @x * @x) % @m

module.exports = LinearMethod