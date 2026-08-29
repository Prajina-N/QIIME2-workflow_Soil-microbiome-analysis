# DADA2 denoising and ASV inference
## Trimming and truncation parameters should be adjusted based on the sequencing quality profile observed in .qzv file from 01_import.sh

qiime dada2 denoise-paired \
  --i-demultiplexed-seqs paired-end-trimmed-demux.qza \
  --p-trunc-len-f PLACEHOLDER_FORWARD_TRUNCATION \
  --p-trunc-len-r PLACEHOLDER_REVERSE_TRUNCATION \
  --o-table table.qza \
  --o-representative-sequences rep-seqs.qza \
  --o-denoising-stats denoising-stats.qza \
  --o-base-transition-stats base-transition-stats.qza

# Visualize the DADA2 output files.

## Inspect denoising statistics to evaluate read retention throughout the DADA2 pipeline.

## Inspect representative sequences to verify that primer and adapter sequences have been appropriately removed.

## Inspect the feature table to review sample sequencing depth and determine an appropriate sampling depth for downstream diversity analysis.

## Insoect base transition stats to examine nucleotide transition error rates across quality scores to assess how well DADA2 models sequencing errors.

### Sampling depth will be evaluated more formally during the alpha rarefaction step.

qiime metadata tabulate \
  --m-input-file denoising-stats.qza \
  --o-visualization denoising-stats.qzv

qiime feature-table summarize \
  --i-table table.qza \
  --m-sample-metadata-file your-metadata.tsv \
  --o-visualization table.qzv
  
qiime feature-table tabulate-seqs \
  --i-data rep-seqs.qza \
  --o-visualization rep-seqs.qzv

qiime dada2 plot-base-transitions \
  --i-base-transition-stats base-transition-stats.qza \
  --o-visualization base-transition-stats.qzv

