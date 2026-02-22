TEX ?= catalyst-technical-whitepaper-new.tex
OUTDIR ?= build

.PHONY: help pdf clean distclean

help:
	@echo "Targets:"
	@echo "  make pdf        Build PDF from $(TEX) into $(OUTDIR)/"
	@echo "  make clean      Remove intermediate LaTeX artifacts in $(OUTDIR)/"
	@echo "  make distclean  Remove $(OUTDIR)/ completely"
	@echo ""
	@echo "Variables:"
	@echo "  TEX=<file.tex>  Choose entrypoint (default: $(TEX))"
	@echo "  OUTDIR=<dir>    Output directory (default: $(OUTDIR))"

$(OUTDIR):
	@mkdir -p "$(OUTDIR)"

pdf: $(OUTDIR)
	@command -v latexmk >/dev/null 2>&1 || ( \
		echo "latexmk not found. Install TeX Live + latexmk (see README.md)."; \
		exit 127; \
	)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$(OUTDIR)" "$(TEX)"

clean:
	@if [ -d "$(OUTDIR)" ]; then latexmk -c -outdir="$(OUTDIR)" "$(TEX)" || true; fi

distclean:
	@rm -rf "$(OUTDIR)"
