SRC = turing.core.js turing.oo.js turing.enumerable.js turing.promise.js turing.functional.js turing.dom.js turing.plugins.js turing.events.js turing.net.js turing.touch.js turing.anim.js turing.require.js

docs:
	./node_modules/.bin/dox --title Turing turing.*.js --intro docs/intro.md > docs/index.html

lint:
	./node_modules/.bin/jslint --onevar false *.js

build: $(SRC)
	cat $^ > build/turing.js

min: build
	./node_modules/.bin/uglifyjs --no-mangle build/turing.js > build/turing.min.js

.PHONY: lint docs build
