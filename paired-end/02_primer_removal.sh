## Remove forward and reverse primers using Cutadapt.
# Replace YOUR_FORWARD_PRIMER and YOUR_REVERSE_PRIMER with the actual primer sequences when running the workflow.

qiime cutadapt trim-paired \
  --i-demultiplexed-sequences paired-end-demux.qza \
  --p-front-f YOUR_FORWARD_PRIMER \
  --p-front-r YOUR_REVERSE_PRIMER \
  --o-trimmed-sequences paired-end-trimmed-demux.qza
