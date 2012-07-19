REPORTER = dot

lib:
	@./node_modules/.bin/coffee -c -o lib src

test: lib
	@NODE_ENV=test ./node_modules/.bin/mocha --recursive --reporter $(REPORTER) --compilers coffee:coffee-script

tests: test

.PHONY: test tests lib