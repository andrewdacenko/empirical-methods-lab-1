class Period
    constructor: (@method, @accuracy = 10000) ->
    random: ->
        numbers = []
        while true
            hash = @method.random()
            if hash in numbers
                index = numbers.indexOf hash
                return numbers.length
            else numbers.push hash
            return @accuracy if numbers.length >= @accuracy

module.exports = Period;