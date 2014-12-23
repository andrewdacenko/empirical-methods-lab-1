Period = require './libs/period'
Knuth = require './libs/knuth'

method = new Knuth
period = new Period new Knuth
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()
