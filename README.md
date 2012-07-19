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

Since this is a new port, these are the only functions completed thus far:


itertools.permutationsSync(_iterable[, r]_)

&nbsp;&nbsp;&nbsp;&nbsp;Returns list of r length permutations of elements in the _iterable_.