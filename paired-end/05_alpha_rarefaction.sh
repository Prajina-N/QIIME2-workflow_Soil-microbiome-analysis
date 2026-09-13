# Set --p-max-depth based on the range of sequencing depth observed in table.qzv.
# The maximum depth should be high enough to visualize the rarefaction curves across the relevant range of sequencing depth.

qiime diversity alpha-rarefaction \
  --i-table table.qza \
  --i-phylogeny rooted-tree.qza \
  --p-max-depth 4000 \      
  --m-metadata-file your-metadata.tsv \
  --o-visualization alpha-rarefaction.qzv

## Choose a sampling depth that retains all or most samples while ensuring that the alpha rarefaction curves have approached a plateau,
## indicating that additional sequencing is recovering relatively little to no additional diversity.

## --p-max-depth and sampling depth are NOT same thing.
