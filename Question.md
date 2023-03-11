Hi, I managed to run the example, and then I was trying it on our pombe phenotypes, but I don’t seem to manage. The command does not print any error and it does not create any file. I think this should be the command:

```
runoak -i sqlite:obo:fypo -G hpoa -g input/pombe_phenotypes.tsv enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o enrichment.csv
```

I have the same problem with go enrichment, using the below command:

```
runoak -i sqlite:obo:go -G gaf -g input/go_annotations.gaf enrichment -p i -U pombe_genes.tsv -B input/background_protein_coding.tsv -O csv -o go_enrichment.csv
```

For phenotype, I have reformatted our phenotype annotations to match that of the hpoa (first column is the gene id, fourth column is the phenotype identifier). head of the file `input/pombe_phenotypes.tsv`looks like this:

```
#Gene systematic ID	dummy1	dummy2	FYPO ID
SPCC338.10c			FYPO:0000245
SPCC338.10c			FYPO:0002060
SPCC338.10c			FYPO:0002177
...
```

`pombe_genes.tsv` is like this:

```
SPAPB1A10.09	None
SPAC3G9.12	None
SPAC3C7.12	None
SPAC3G9.01	None
...
```

And `input/background_protein_coding.tsv`

```
SPAC3F10.09
SPAC977.08
SPAC23D3.11
SPBC428.14
...
```