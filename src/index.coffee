class Itertools
  constructor: () ->
    # do nothing

  permutationsSync: (arr, k = arr.length) ->
    # TODO: make sure arr is correct type

    throw "k cannot be larger than length of array" if k > arr.length
    
    

module.exports = exports = new Itertools();