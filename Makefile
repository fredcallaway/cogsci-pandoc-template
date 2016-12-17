paper = foo
all: $(paper).md cogsci_template.tex
	pandoc -s -S --template=cogsci_template.tex --natbib -o $(paper).tex $(paper).md
	latexmk -pdf $(paper).tex

clean:
	latexmk -c
	rm $(paper).tex

