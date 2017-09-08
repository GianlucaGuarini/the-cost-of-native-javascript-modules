build:
	@ make clean
	@ touch lib/index.js
	@ for letter in {a..z}; do \
		echo "export default { $$letter: '$$letter' }" > lib/$$letter.js; \
		echo "const $$letter = { $$letter: '$$letter' }" >> lib/index.js; \
	done

clean:
	@ rm -rf lib/*.js

.PHONY: build clean