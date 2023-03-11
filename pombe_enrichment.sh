curl -k https://www.pombase.org/data/annotations/Phenotype_annotations/phenotype_annotations.pombase.phaf.gz --output  input/phenotype_annotations.phaf.gz
gzip -fd input/phenotype_annotations.phaf.gz
curl -k https://www.pombase.org/data/annotations/Gene_ontology/gene_association.pombase.gz --output input/go_annotations.gaf.gz
gzip -fd input/go_annotations.gaf.gz

python format_for_enrichment.py

runoak -i sqlite:obo:fypo -G hpoa -g input/pombe_phenotypes.tsv enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o enrichment.csv

runoak -i sqlite:obo:go -G gaf -g input/go_annotations.gaf enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o go_enrichment.csv