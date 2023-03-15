# OAK tutorial

Slides: https://docs.google.com/presentation/d/1b714y5W9EdjypwrHKNdDT4liVqMIbsIDfGxxrVWFxc0/edit#slide=id.g215fddbc4d6_0_181

## Interesting things mentioned:

* Enrichment
* Graphs
  * Can you get descendants as well in the viz?
* Associations

```bash
# get the relationships from a node
runoak -i sqlite:obo:fypo relationships FYPO:0007954

runoak -vv -i sqlite:obo:go relationships –-predicates i,p nucleus

```



To append PomBase: to make systematic ids CURIEs:

```
sed -i -e 's/^/PomBase:/' input/pombe_phenotypes.tsv
```

