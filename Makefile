build:
	zsh ./build.zsh

test:
	zunit

publish:
	git fetch origin
	git checkout gh-pages
	git reset --hard $${TRAVIS_COMMIT:-'master'}
	make build
	git add index.json
	git commit -m 'Update JSON index'
	# Hide output of push, as access token is printed
	git push --force origin gh-pages >/dev/null 2>&1
	git checkout master
