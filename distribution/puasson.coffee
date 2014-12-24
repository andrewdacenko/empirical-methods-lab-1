Puasson = ->
    mu = 3
    e_mu = Math.exp(-mu)
        
    result = []
    for iter in [0...50]
        r_list = (Math.random() for i in [0...50])
        next_puasson = 1
        j = 0
        u_mult = r_list[j]
        while u_mult > e_mu
            u_mult *= r_list[j]
            next_puasson += 1
            j += 1
        result.push next_puasson
        
    result

module.exports = Puasson