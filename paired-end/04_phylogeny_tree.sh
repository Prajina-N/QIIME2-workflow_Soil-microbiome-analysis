# Build a phylogenetic tree from the representative ASV sequences.

qiime phylogeny align-to-tree-mafft-fasttree \
  --i-sequences rep-seqs.qza \
  --o-alignment aligned-rep-seqs.qza \
  --o-masked-alignment masked-aligned-rep-seqs.qza \
  --o-tree unrooted-tree.qza \
  --o-rooted-tree rooted-tree.qza

# aligned-rep-seqs.qza:
## ASV sequences aligned so corresponding nucleotide positions can be compared.

# masked-aligned-rep-seqs.qza:
## Alignment with unreliable positions masked before building the tree.

# unrooted-tree.qza:
## Phylogenetic tree showing relationships among ASVs without a defined root.

# rooted-tree.qza:
## Rooted phylogenetic tree used for phylogenetic diversity analyses, such as Faith's PD and UniFrac.
