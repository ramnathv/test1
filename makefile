build: test.html

build/%.md: source/%.Rmd
	Rscript -e "library(knitr); knit('$<', '$@')"
	
%.html: build/%.md
	Rscript -e "library(markdown); markdownToHTML('$<', '$@')"