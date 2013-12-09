PDF_VIEWER = evince
RM = rm -rf
DOCUMENT = artykul

all: compile

compile:
	@rubber --pdf --warn all $(DOCUMENT).tex
	@echo "Done."

.PHONY: view clean distclean

view:
	@$(PDF_VIEWER) $(DOCUMENT).pdf &

clean:
	@echo "Removing compilation files..."
	@$(RM) *.aux
	@$(RM) *.bbl
	@$(RM) *.blg
	@$(RM) *.toc
	@$(RM) *.lof
	@$(RM) *.out

distclean: clean
	@echo "Removing compiled PDF file..."
	@$(RM) $(DOCUMENT).pdf
