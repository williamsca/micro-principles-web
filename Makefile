CSL = chicago-syllabus

## Location of Pandoc support files.
PREFIX = /home/colin/.pandoc

syllabus/syllabus.pdf: syllabus/syllabus.md
	pandoc --citeproc syllabus/syllabus.md --pdf-engine=pdflatex --template=latex.template.syllabus --csl=$(PREFIX)/csl/$(CSL).csl -o $@

# Clean target
.PHONY: clean

clean:
	rm -f paper.pdf
	rm -f paper.html
	rm -f proposal.pdf
	rm -f Rplots.pdf
	rm -f .RData
	rm -f *.Rout
	rm -f *.aux
	rm -f *.log
	rm -f *.gz
	rm -f *.tex
	rm -f *.out