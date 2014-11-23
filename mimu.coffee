Period = require './libs/period'
Mimu = require './libs/mimu'

method = new Mimu
period = new Period new Mimu
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()
