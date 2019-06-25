all: site

site: clean
	mkdir -p docs
	cp Guide.md docs/index.md
	mkdocs build

clean:
	rm -rf site/