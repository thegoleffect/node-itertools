# factorial() taken from: http://stackoverflow.com/questions/3959211/fast-factorial-function-in-javascript
_memofactorial = new Array()
factorial = (n) ->
  return 1 if n == 0 or n == 1
  if _memofactorial[n] > 0
    return _memofactorial[n]
  else
    _memofactorial[n] = factorial(n - 1) * n
    return _memofactorial[n]

class Itertools
  constructor: () ->
    # do nothing

  permutationsSync: (iterable, r = iterable.length) ->
    # TODO: make sure iterable is correct type
    iterable = iterable.split("") if typeof iterable == 'string'
    throw "iterable must be a string or array" if not (iterable instanceof Array)
    pool = iterable.slice(0)
    n = pool.length
    throw "r must be an integer" if typeof r != 'number' or r % 1 != 0
    throw "r must be smaller than iterable length" if r > n # Python returns [] for this case, wonder why
    throw "r must be non-negative" if r < 0
    
    indices = [0..(n-1)]
    cycles = [n..(n-r+1)]
    
    perms = [pool[i] for i in indices.slice(0, r)]
    
    numPerms = factorial(n) / factorial(n - r)
    while perms.length < numPerms
      for i in [(r-1)..0]
        # console.log(i, r, n, perms.length, perms)
        cycles[i] -= 1
        if cycles[i] == 0
          slice = indices.slice(i+1).concat(indices.slice(i, i+1))
          # indices.splice.apply([i, slice.length].concat(slice))
          Array.prototype.splice.apply(indices, [i, slice.length].concat(slice))
          cycles[i] = n - i
        else
          jj = cycles[i]
          j = indices.length - jj
          [indices[i], indices[j]] = [indices[j], indices[i]]
          perms.push(pool[i] for i in indices.slice(0, r))
          break
    return perms

module.exports = exports = new Itertools();