build:
	zsh ./build.zsh

publish:
	git checkout gh-pages
	git rebase -p master
	make build
	git add index.json
	git commit -m 'Update JSON index'
	git push origin gh-pages
	git checkout master
