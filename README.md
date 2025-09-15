# MyMed Documentation

Documentação técnica do projeto MyMed - Sistema de gerenciamento médico desenvolvido pelos alunos do IFSP.

## Estrutura do Projeto

```
documentation/
├── main.tex                    # Documento principal
├── referencias.bib             # Bibliografia
├── sbc-template.sty           # Template SBC
├── config/                    # Configurações LaTeX
│   ├── packages.tex           # Importação de pacotes
│   ├── document-info.tex      # Informações do documento
│   └── formatting.tex         # Configurações de formatação
├── sections/                  # Seções do documento
│   ├── pesquisas.tex          # Pesquisas realizadas
│   ├── requisitos_f.tex       # Requisitos funcionais
│   ├── requisitos_nf.tex      # Requisitos não funcionais
│   ├── regras_negocio.tex     # Regras de negócio
│   ├── dicionario_casos_uso.tex # Dicionário de casos de uso
│   ├── prototipagem.tex       # Prototipagem
│   ├── secao_empresa.tex      # Seção empresa
│   └── plano_testes.tex       # Plano de testes
├── assets/                    # Recursos do documento
│   ├── figuras/              # Diagramas e imagens
│   └── prototipo/            # Imagens do protótipo
└── build/                     # Arquivos de compilação (git ignored)
```

## Como Compilar

### Usando Makefile (Recomendado)

```bash
# Compilar documento completo
make pdf

# Compilação rápida (sem bibliografia)
make quick

# Limpar arquivos temporários
make clean

# Ver PDF após compilação
make view

# Ver todas as opções disponíveis
make help
```

### Usando LaTeX diretamente

```bash
# Compilação completa
pdflatex -output-directory=build main.tex
bibtex build/main
pdflatex -output-directory=build main.tex
pdflatex -output-directory=build main.tex
```

## Dependências

- LaTeX (TeX Live ou MiKTeX)
- Pacote abntex2
- Template SBC
- Outros pacotes listados em `config/packages.tex`

## Contribuindo

1. Edite os arquivos relevantes em `sections/`
2. Adicione novas imagens em `assets/figuras/` ou `assets/prototipo/`
3. Atualize a bibliografia em `referencias.bib`
4. Compile com `make pdf` para verificar as mudanças

## Estrutura de Branches

- `main` - Versão estável da documentação
- Branches de feature para desenvolvimento de seções específicas

## Autores

- Arthur Augusto Lessa Ferreira
- Fernando Freitas de Lira
- Henriquy Dias Terto Alves
- Isabella Pantolfo Melo
- Lucas da Conceição Silva Moura
- Mateus Armando Carrara de Mendonça

Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - Campus São Paulo (IFSP)

Quer ver nossa evolução? Acesse nossas apresentações e versões anteriores do documento [clicando aqui!](https://drive.google.com/drive/folders/112JEd8Cc-MaosCIlk0leCmEO8L83DIxY?usp=sharing)

Visite o site hospedado de nossa documentação [aqui!](https://hyperion-ifsp.github.io/documentation/)
