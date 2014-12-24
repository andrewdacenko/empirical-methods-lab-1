Normal = ->
    M = 5
    sig2 = 2
    D = sig2**2
    result = []
    
    for i in [0...50]
        r_list = (Math.random() for i in [0...50])
        sum_elems = r_list.reduce(
            (s, e) ->
                s + e
            0
        )
        next_wi = (sum_elems - 25) * Math.sqrt(50/D)
        result.push next_wi
    
    result

module.exports = Normal