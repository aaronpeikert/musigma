all: proposals.md

proposals.md: proposals.R $(wildcard proposals/*.md) proposals/
	Rscript -e "source('$<')"
