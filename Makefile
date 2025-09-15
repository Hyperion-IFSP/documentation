# MyMed Documentation Build Configuration
# =======================================

# Project settings
MAIN = main
BUILD_DIR = build
ASSETS_DIR = assets
SECTIONS_DIR = sections
CONFIG_DIR = config

# LaTeX compiler settings
LATEX = pdflatex
BIBTEX = bibtex
MAKEINDEX = makeindex

# Default target
.PHONY: all
all: pdf

# Build PDF
.PHONY: pdf
pdf:
	@echo "Building PDF..."
	$(LATEX) -output-directory=$(BUILD_DIR) $(MAIN).tex
	$(BIBTEX) $(BUILD_DIR)/$(MAIN)
	$(LATEX) -output-directory=$(BUILD_DIR) $(MAIN).tex
	$(LATEX) -output-directory=$(BUILD_DIR) $(MAIN).tex
	@echo "PDF built successfully: $(BUILD_DIR)/$(MAIN).pdf"

# Quick build (no bibliography)
.PHONY: quick
quick:
	@echo "Quick building PDF..."
	$(LATEX) -output-directory=$(BUILD_DIR) $(MAIN).tex
	@echo "Quick PDF built: $(BUILD_DIR)/$(MAIN).pdf"

# Clean build artifacts
.PHONY: clean
clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(BUILD_DIR)/*
	@echo "Build directory cleaned."

# Full clean (including output)
.PHONY: distclean
distclean: clean
	rm -f $(MAIN).pdf

# View PDF (adjust command based on your OS)
.PHONY: view
view: pdf
	@echo "Opening PDF..."
	# Windows
	start $(BUILD_DIR)/$(MAIN).pdf
	# MacOS: open $(BUILD_DIR)/$(MAIN).pdf
	# Linux: xdg-open $(BUILD_DIR)/$(MAIN).pdf

# Check for LaTeX errors
.PHONY: check
check:
	@echo "Checking LaTeX syntax..."
	$(LATEX) -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN).tex

# Help
.PHONY: help
help:
	@echo "MyMed Documentation Build System"
	@echo "================================="
	@echo ""
	@echo "Available targets:"
	@echo "  all       - Build complete PDF (default)"
	@echo "  pdf       - Build complete PDF with bibliography"
	@echo "  quick     - Quick PDF build (no bibliography)"
	@echo "  clean     - Clean build artifacts"
	@echo "  distclean - Clean everything including output"
	@echo "  view      - Build and view PDF"
	@echo "  check     - Check LaTeX syntax"
	@echo "  help      - Show this help message"