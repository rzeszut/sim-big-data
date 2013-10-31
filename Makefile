PDF_VIEWER = evince
RM = rm -rf

all: compile

compile:
	@rubber --pdf --warn all big-data.tex
	@echo "Done."

.PHONY: view clean distclean

view:
	@$(PDF_VIEWER) big-data.pdf &

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
	@$(RM) *.pdf
