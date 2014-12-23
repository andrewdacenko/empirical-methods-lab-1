hi2 = (p_t, p_p, n) ->
	sum = 0
	for i in [0...p_p.length]
		sum = sum + Math.pow(p_t[i] - p_p[i], 2) / p_p[i] * n
	sum

Frequency = (rands, size, count) ->
	p_t = (1 / size for i in [0...size])

	p_p = (0 for i in [0...size])

	for i in [0...rands.length]
		p_p[rands[i]] = p_p[rands[i]] + 1
		
	for i in [0...p_p.length]
		p_p[i] = p_p[i] / count

	hi2 p_t, p_p, count

module.exports = Frequency