# Itertools

This is an initial attempt to port some of Python's [itertools](http://docs.python.org/library/itertools.html) functions to node.  


Quick example:

    var itertools = require("itertools");
    var fruitBaskets = itertools.permutationsSync(["Apple", "Orange", "Banana"], 2);
    // fruitBaskets = [['Apple', 'Orange'], ['Apple', 'Banana'], ['Orange', 'Apple'], ['Orange', 'Banana'], ['Banana', 'Apple'], ['Banana', 'Orange']]


## Install

    $ npm install itertools

OR

    $ git clone git://github.com/thegoleffect/node-itertools.git

THEN

    var itertools = require('itertools');



## API

Functions ported thus far:

    itertools.permutationsSync(__iterable[, r]__)
      Returns list of r length permutations of elements in the __iterable__.