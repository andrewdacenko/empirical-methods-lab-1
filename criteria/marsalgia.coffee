Marsalgia = (rands, size, count) ->
	rands.sort (a,b) -> a - b

	s = (for i in [0...count]
		if i != count - 1
			rands[i + 1] - rands[i] 
		else 
			rands[0] + size - rands[count - 1]
	)

	s.sort (a,b) -> a - b

	R = (0 for i in [0...count])

	counter = 0
	found = false
	for i in [1...count]
		if s[i] == s[i - 1]
			counter++
			found = true
		else
			R[counter]++
			found = false
			counter = 0
			
	R.reduce(
		(a,b) -> 
			a + b / count
		0
	)

module.exports = Marsalgia