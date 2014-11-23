# X[n] = (X[n-24] + X[n-55]) mod m, n>=55,
class MitchellMurr
	constructor: ->
		@size = 55
		@m = 100
		@n = 55
		@table = @getTable()
	getTable: -> # где m — чётное число, а X[0]..X[54] — произвольные целые не все чётные числа."
		table = []
		for i in [0...55]
			loop 
				x = ~~(Math.random() *@m) 
				break if x not in table
			table.push x
		table
	random: ->
		@n = @n + 1
		(@table[(@n - 25) % @size] + @table[(@n - 56) % @size]) % @m

module.exports = MitchellMurr