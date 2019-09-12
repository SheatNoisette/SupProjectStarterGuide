all: site

site: clean
	mkdir -p docs
	cp Intro.md docs/index.md
	cp Guide.md docs/guide.md
	cp LICENSE.md docs/license.md
	mkdocs build

deploy: site
	mkdocs gh-deploy

clean:
	rm -rf site/
	rm -rf docs/
