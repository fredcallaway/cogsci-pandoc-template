paper = foo
all: $(paper).md cogsci_template.tex
	pandoc -s -S --template=cogsci_template.tex --natbib -o $(paper).tex $(paper).md
	latexmk -pdf -quiet $(paper).tex

clean:
	latexmk -c
	rm $(paper).tex
	rm $(paper).bbl

