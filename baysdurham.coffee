Period = require './libs/period'
BaysDurham = require './libs/baysdurham'

method = new BaysDurham
period = new Period new BaysDurham
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()
