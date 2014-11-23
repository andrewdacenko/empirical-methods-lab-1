Polinom = require './polinom'

class BaysDurham
	constructor: ->
		@polinom = new Polinom
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
		rand = @polinom.random()
		@j = ~~ (@r * @xi / @m)
		x = @x[@j]
		@x.splice(@j, 0, rand)
		@A[@j] = rand
		x

module.exports = BaysDurham