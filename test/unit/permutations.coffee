should = require("should")
itertools = require("../..") #

describe("Itertools", () ->
  describe("#permutationsSync", () ->
    it("should work for known iterable string", (done) ->
      # permutations('ABCD', 2) --> AB AC AD BA BC BD CA CB CD DA DB DC
      arr = 'ABCD'
      k = 2
      expected = [['A', 'B'], ['A', 'C'], ['A', 'D'], ['B', 'A'], ['B', 'C'], ['B', 'D'], ['C', 'A'], ['C', 'B'], ['C', 'D'], ['D', 'A'], ['D', 'B'], ['D', 'C']]
      result = itertools.permutationsSync(arr, k)
      
      result.length.should.equal(expected.length)
      for n in [0..expected.length - 1]
        result.should.includeEql(expected[n])
        
      done()
    )
    
    it("should work for known iterable numbers", (done) ->
      arr = [0..2]
      expected = [[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]]
      
      result = itertools.permutationsSync(arr)
      
      result.length.should.equal(expected.length)
      for n in [0..expected.length - 1]
        result.should.includeEql(expected[n])
        
      done()
    )
    
    it("should not work for invalid iterable inputs", (done) ->
      invalids = [1, 1.5, {x:1}, true, null, undefined]
      for x in invalids
        (() ->
          itertools.permutationsSync(x)
        ).should.throw()
      done()
    )
    
    it("should not work for invalid r inputs", (done) ->
      arr = "ABCD"
      invalids = [10, -5, 1.5, 'a', {x:1}, [1]]
      for x in invalids
        (() ->
          itertools.permutationsSync(arr, x)
        ).should.throw()
      done()
    )
  )
)