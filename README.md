# Itertools

This is an initial attempt to port some of Python's [itertools](http://docs.python.org/library/itertools.html) functions to [node.js](http://nodejs.org/).

## Quick Example

```javascript
var itertools = require("itertools");

var fruitBaskets = itertools.permutationsSync(["Apple", "Orange", "Banana"], 2);
// fruitBaskets = [['Apple', 'Orange'], ['Apple', 'Banana'], ['Orange', 'Apple'], ['Orange', 'Banana'], ['Banana', 'Apple'], ['Banana', 'Orange']]

var pairs = itertools.combinationsSync([1, 2, 3], 2);
// pairs = [[1, 2], [1, 3], [2, 3]]
```

## Installation

```bash
$ npm install itertools
```

OR
```bash
$ git clone git://github.com/thegoleffect/node-itertools.git
```

THEN
```javascript
var itertools = require('itertools');
```

## API

Since this is a new port, these are the only functions completed thus far:

```
itertools.permutationsSync(_iterable[, r]_)
```

&nbsp;&nbsp;&nbsp;&nbsp;Returns list of r length permutations of elements in the _iterable_.

```
itertools.combinationsSync(_iterable_, r)
```

&nbsp;&nbsp;&nbsp;&nbsp;Returns list of r length combinations (without repetitions) of elements in the _iterable_.
