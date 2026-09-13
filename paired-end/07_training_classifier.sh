# ===================================================================
# Train a Naive Bayes classifier using the your reference database
# ===================================================================

## You can dowload the Silva or Greengenes clssifier for Bacterial 16S and Unite classifier for ITS from QIIME2 data resources page.
## If the downloaded file is in .fasta and .txt, you can import it to get the output as .qza which can be used for filtering step below

qiime tools import \
--type 'FeatureData[Sequence]' \
--input-path your_downloaded_seqs.fasta \
--output-path your_downloaded_seqs.qza

qiime tools import \
--type 'FeatureData[Taxonomy]' \
--input-format HeaderlessTSVTaxonomyFormat \
--input-path your_downloaded_taxa.txt \
--output-path your_downloaded_taxa.qza

## Extract the reference sequences corresponding to the target amplicon region using the forward and reverse primers.
## The length limits help retain sequences matching the expected amplicon length.

qiime feature-classifier extract-reads \
  --i-sequences your_downloaded_seqs.qza \
  --p-f-primer YOUR_FORWARD_PRIMER \
  --p-r-primer YOUR_REVERSE_PRIMER \
  --p-min-length 300 \
  --p-max-length 450 \
  --o-reads your_downloaded_seqs_filtered.qza \
  --verbose


## Dereplicate the extracted reference sequences and their corresponding taxonomy to reduce redundant sequences.

qiime rescript dereplicate \
  --i-sequences your_downloaded_seqs_filtered.qza \
  --i-taxa your_downloaded_taxa.qza \
  --p-mode uniq \
  --o-dereplicated-sequences your_derep_seqs.qza \
  --o-dereplicated-taxa your_derep_taxa.qza \
  --verbose


## Train a Naive Bayes classifier using the processed reference sequences and their taxonomic labels.

qiime feature-classifier fit-classifier-naive-bayes \
  --i-reference-reads your_derep_seqs.qza \
  --i-reference-taxonomy your_derep_taxa.qza \
  --o-classifier your_classifier.qza \
  --verbose


## Classify the representative ASV sequences using the trained Naive Bayes classifier.
### Use rep-seqs.qza from your DADA2 denoising step

qiime feature-classifier classify-sklearn \
  --i-classifier your_classifier.qza \
  --i-reads rep-seqs.qza \
  --o-classification taxonomy.qza \
  --verbose


## Visualize the taxonomic assignments.

qiime metadata tabulate \
  --m-input-file taxonomy.qza \
  --o-visualization taxonomy.qzv
