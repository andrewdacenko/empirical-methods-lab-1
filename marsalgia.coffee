marsalgia = require './criteria/marsalgia'

methods =
	baysdurham: require './libs/baysdurham'
	dacenko: require './libs/dacenko'
	knuth: require './libs/knuth'
	linear: require './libs/linear'
	mimu: require './libs/mimu'
	polinom: require './libs/polinom'

count = 2**9
size = 2**25

for name, method of methods
	m = new method
	rands = (m.random() for i in [0...count])
	max = Math.max.apply(Math.max, rands) + 1
	rands = (Math.floor(rands[i] / max * size) for i in [0...count])
	console.log "#{name} = #{Math.abs(marsalgia(rands, size, count))}"