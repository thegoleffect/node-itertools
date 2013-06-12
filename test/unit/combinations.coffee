should = require "should"
itertools = require "../.."

describe "#combinationsSync", ->

  it "should work for known iterable numbers", ->
    itertools.combinationsSync([1, 2, 3], 2).should.eql [[1, 2], [1, 3], [2, 3]]

  it "should work for known iterable string", ->
    itertools.combinationsSync("abc", 2).should.eql [["a", "b"], ["a", "c"], ["b", "c"]]

  it "should return empty result if r is greater than itrable length", ->
    itertools.combinationsSync("abc", 4).should.eql []

  it "should work for edge case when r is equal to iterable length", ->
    itertools.combinationsSync([1, 2, 3], 3).should.eql [[1, 2, 3]]
