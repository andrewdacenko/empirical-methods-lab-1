Period = require './libs/period'
Linear = require './libs/linear'

# Not 1.1 Theorem
smallPeriod =
	m: -1 + Math.pow(2, 20)
	a: 123733
	c: 1234123
	x: 67812

method = new Linear
methodShort = new Linear smallPeriod
period = new Period new Linear
periodShort = new Period new Linear smallPeriod
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

for i in [0..count]
	rands.push methodShort.random()
	console.log "Random number in short: #{rands[i]}"

console.log 'Period: ', period.random()
console.log 'Short Period: ', periodShort.random()