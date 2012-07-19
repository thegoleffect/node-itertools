should = require("should")
itertools = require("../..") #

describe("Itertools", () ->
  describe("#permutationsSync", () ->
    it("should work for known parameters", (done) ->
      # permutations('ABCD', 2) --> AB AC AD BA BC BD CA CB CD DA DB DC
      arr = 'ABCD'
      k = 2
      expected = ['AB', 'AC', 'AD', 'BA', 'BC', 'BD', 'CA', 'CB', 'CD', 'DA', 'DB', 'DC']

      itertools.permutationsSync(arr, k).should.equal(expected)
      done()
    )
  )
)