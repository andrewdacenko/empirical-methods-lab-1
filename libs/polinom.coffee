# m = p, m = 2^32 - 1, k = 2
# X[n] = (a1 * X[n-1] + ak * X[n-k]) mod p
class Polinom
	constructor: ->
		@a1 = 2 # a1 = a^1
		@a2 = 4 # a2 = a^2
		@n = -1
		@x = '-2': 3, '-1': 17
		@p =  -1 + Math.pow(2, 32)
	random: -> 
		@n = @n + 1
		@x[@n] = (@a1 * @x[@n - 1] + @a2 * @x[@n - 2]) % @p
		@x[@n]

module.exports = Polinom
