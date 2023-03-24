runoak -i sqlite:obo:fypo -G hpoa -g input/pombe_phenotypes.tsv enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o enrichment.csv

runoak -i sqlite:obo:go -G gaf -g input/go_annotations.gaf enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o go_enrichment.csv