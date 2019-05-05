.PHONY: paper.pdf

all: paper.pdf

paper.pdf: paper.tex
	latexmk \
	  -pdf \
	  -pdflatex="pdflatex -file-line-error -interaction=nonstopmode" \
	  -use-make \
	  paper.tex

clean:
	latexmk -c -bibtex
