# Unzip the downloaded sequencing data
unzip -q YourRawFile.zip

# Import paired-end FASTQ sequences into QIIME 2
## Before importing, you need to create manifest.txt file (Refer to QIIME2-workflow_Soil-microbiome-analysis / manifests)
qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path manifest.txt \
  --output-path paired-end-demux.qza \
  --input-format PairedEndFastqManifestPhred33V2

# View the imported demultiplexed data and inspect sequencing quality scores.
## Quality profiles will be used to determine appropriate trimming and truncation parameters for DADA2 denoising step.
qiime demux summarize \
  --i-data paired-end-demux.qza \
  --o-visualization paired-end-demux.qzv
