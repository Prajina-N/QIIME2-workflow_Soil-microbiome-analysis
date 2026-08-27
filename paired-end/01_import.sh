# Unzip the downloaded sequencing data
unzip -q YourRawFile.zip

# Import paired-end FASTQ sequences into QIIME 2
qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path manifest.txt \
  --output-path paired-end-demux.qza \
  --input-format PairedEndFastqManifestPhred33V2
