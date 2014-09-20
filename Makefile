MAIN=voip
BIB=$(MAIN)
LATEX=latexmk -pdf

$(MAIN).pdf: $(MAIN).tex $(BIB).bib
	$(LATEX) $(MAIN)

open: $(MAIN).pdf
	open $(MAIN).pdf

clean:
	$(LATEX) -C

edit:
	$(EDITOR) $(MAIN).tex $(BIB).bib

live:
	$(LATEX) -pvc $(MAIN) &>/dev/null &
	$(EDITOR) $(MAIN).tex $(BIB).bib
