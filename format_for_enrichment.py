import pandas

data = pandas.read_csv('input/phenotype_annotations.phaf', sep='\t', na_filter=False)[['Gene systematic ID', 'FYPO ID']]
data['dummy1'] = ''
data['dummy2'] = ''
data.rename(columns={'Gene systematic ID': '#Gene systematic ID'},inplace=True)
data[['#Gene systematic ID','dummy1', 'dummy2', 'FYPO ID']].drop_duplicates().to_csv('input/pombe_phenotypes.tsv', sep='\t', index=False)
