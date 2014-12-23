class Digit
	constructor: (seed) ->
		@digits = []
		@positive = true
		if seed < 0
			@positive = false
			seed = -seed
		loop
			@digits.unshift seed % 10
			seed = seed / 10
			break if seed is 0
	getValue: ->
		result = 0
		for i in [0...@digits.length]
			result = result * 10
			result = result + @digits[i]
		if @positive then result else result * (-1)
	nextMax: ->
		@digits.pop()

class KnuthMethod
	constructor: (@seed = 380636297739) ->
	random: ->
		currentDigits = [];
		digits = new Digit @seed
		counter = digits.nextMax()

		for i in [0..counter]
			step = digits.nextMax() + 3
			if step <= 3 and @seed < 5000000000 then @seed = @seed + 5000000000
			
			if step <= 4 then @seed = Math.floor((@seed * @seed) / 100000) % 10000000000

			if step <= 5 then @seed = (1001001001 * @seed) % 10000000000

			if step <= 6 and @seed < 100000000 then @seed = @seed + 9814055677 else @seed = 10000000000 - @seed

			if step <= 7 
				first5 = @seed % 100000
				@seed = first5 * 100000 + (@seed / 100000);

			if step <= 8 then @seed = (1001001001 * @seed) % 10000000000

			if step <= 9 
				currentDigits = new Digit @seed
				for j in [0...currentDigits.digits.length]
					if 0 != currentDigits.digits[j] then currentDigits.digits[j]--

			if step <= 10 and @seed < 100000 then @seed = @seed * @seed + 99999 else @seed = @seed - 99999

			if step <= 11
				while @seed < 1000000000
					@seed = @seed * 10

			if step <= 12
				@seed = Math.floor((@seed * (@seed - 1)) / 100000) % 10000000000
				digits = new Digit @seed

		Math.abs(@seed)

module.exports = KnuthMethod