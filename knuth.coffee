Period = require './libs/period'
Knuth = require './libs/knuth'

seed = 380636297739

method = new Knuth seed
period = new Period new Knuth seed
count = 50
rands = []

for i in [0..count]
	rands.push method.random()
	console.log "Random number: #{rands[i]}"

console.log 'Period: ', period.random()
