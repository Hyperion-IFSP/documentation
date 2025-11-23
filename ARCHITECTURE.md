# Estrutura

documentation/
├── main.tex                   # Main document (cleaned up)
├── referencias.bib            # Bibliography
├── sbc-template.sty           # Template
├── README.md                  # Updated with build instructions
├── Makefile                   # Build automation
├── .gitignore                 # Version control (already existed)
├── config/                    # ⭐ NEW: Configuration files
│   ├── packages.tex           # Package imports
│   ├── document-info.tex      # Document metadata
│   └── formatting.tex         # Formatting settings
├── sections/                  # ⭐ NEW: Content sections
│   ├── pesquisas.tex
│   ├── requisitos_f.tex
│   ├── requisitos_nf.tex
│   ├── regras_negocio.tex
│   ├── dicionario_casos_uso.tex
│   ├── prototipagem.tex
│   ├── secao_empresa.tex
│   └── plano_testes.tex
├── assets/                    # ⭐ NEW: Organized assets
│   ├── figuras/               # Images and diagrams
│   └── prototipo/             # Prototype screenshots
└── build/                     # ⭐ NEW: Compilation output
    └── main.pdf               # Successfully compiled!

## Build complete PDF

make pdf

## Quick build (no bibliography)

make quick

## Clean build artifacts

make clean

## View PDF

make view

## See all options

make help
