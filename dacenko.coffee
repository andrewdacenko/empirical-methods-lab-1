Period = require './libs/period'
Dacenko = require './libs/dacenko'

method = new Dacenko
period = new Period new Dacenko
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()
