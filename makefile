all: site

site: clean
	mkdocs build

deploy: site
	mkdocs gh-deploy

clean:
	rm -rf site/
