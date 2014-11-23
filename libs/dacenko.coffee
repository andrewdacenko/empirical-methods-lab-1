Polinom = require './polinom'

class Dacenko
	constructor: ->
		@polinom = new Polinom
		@polinom2 = new Polinom
		@r = 100
		@A = []
		@x = @generate()
		@m = Math.max(@x)
		@j = 0
		@xi = @x[0]
	generate: -> 
		x = []
		for i in [0...@r]
			x.push Math.abs @polinom.random()
			@A[i] = x[i]
		x
	random: ->
		rand1 = @polinom.random()
		rand2 = @polinom.random()
		rand = if Math.abs(rand1 - rand2) / @m % @r > @j then rand1 else rand2
		
		@j = ~~ (@r * @xi / @m)
		x = @x[@j]
		@x.splice(@j, 0, rand)
		@A[@j] = rand
		x

module.exports = Dacenko