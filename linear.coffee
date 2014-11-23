Period = require './libs/period'
Linear = require './libs/linear'

# 1.1 Theorem
fullPeriod = 
	m: 4294967291 # Max prime number below 2^32
	a: 1664525
	c: 1013904223
	x: 127368123

# Not 1.1 Theorem
smallPeriod =
	m: -1 + Math.pow(2, 20)
	a: 123733
	c: 1234123
	x: 67812

method = new Linear fullPeriod
methodShort = new Linear smallPeriod
period = new Period new Linear fullPeriod
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