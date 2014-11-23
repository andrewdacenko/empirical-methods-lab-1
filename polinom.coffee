Period = require './libs/period'
Polinom = require './libs/polinom'

method = new Polinom
period = new Period new Polinom
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()