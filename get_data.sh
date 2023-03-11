runoak -i sqlite:obo:mondo  normalize -M OMIM .desc//p=i EDS | grep -v ^id > omim.txt
curl -kL http://purl.obolibrary.org/obo/hp/hpoa/phenotype.hpoa --output input/hpoa.tsv
runoak -i sqlite:obo:hp -G hpoa -g input/hpoa.tsv  enrichment -p i -U omim.txt -O csv -o enrichment.csv

