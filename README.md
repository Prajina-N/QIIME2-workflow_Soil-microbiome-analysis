# QIIME 2 Workflow: Soil Microbiome Analysis

This repository contains a reproducible QIIME 2 workflow for amplicon-based soil microbiome analysis. Actual sequencing data files are not included because the associated publication is currently in progress.

The workflow demonstrates sequence processing, quality control, DADA2 denoising, taxonomic assignment, diversity analysis, and taxonomic classification.

## Workflow

Raw sequencing data (Not given due to publication-in-progress) 
↓  
QIIME 2 import  
↓  
Quality assessment  
↓  
Primer trimming  
↓  
DADA2 denoising and ASV inference  
↓  
Alpha and beta diversity  
↓  
Phylogenetic analysis  
↓  
Taxonomic classification  

## Sequencing Workflows

- Paired-end amplicon sequencing
- Single-end amplicon sequencing

## Platform

- Illumina MiSeq i100

## Tools

- QIIME 2
- DADA2
- Cutadapt
- phyloseq
- ggplot2
- vegan
- Linux

## Repository Structure

## Repository Structure

```text
QIIME2-workflow_Soil-microbiome-analysis/
│
├── paired-end/
│   ├── 01_import.sh
│   ├── 02_primer_removal.sh
│   ├── 03_dada2.sh
│   ├── 04_phylogeny_tree.sh
│   ├── 05_alpha_rarefaction.sh
│   ├── 06_core_diversity_metrics.sh
│   └── 07_training_classifier.sh
│
├── manifests/
│   └── paired-end-manifest.txt
│
├── README.md
├── environment.yml
└── .gitignore

