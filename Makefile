all: html js css

html: dist/index.html
js: dist/js/front.js dist/js/utils.js
css: dist/css/front.css

dist/index.html: src/index.html
	cp -p src/index.html dist/

dist/js/front.js: src/js/front.js
	./node_modules/.bin/uglifyjs src/js/front.js -cm -o dist/js/front.js --source-map "root='../../',url='front.js.map',filename='front.js'"

dist/js/utils.js: src/js/utils.js
	./node_modules/.bin/uglifyjs src/js/utils.js -cm -o dist/js/utils.js --source-map "root='../../',url='utils.js.map',filename='utils.js'"

dist/css/front.css: src/sass/front.scss
	./node_modules/.bin/sass src/sass/front.scss dist/css/front.css

clean:
	rm dist/index.html
	rm dist/js/front.js
	rm dist/js/front.js.map
	rm dist/js/utils.js
	rm dist/js/utils.js.map
	rm dist/css/front.css
	rm dist/css/front.css.map
