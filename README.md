# QIIME 2 Workflow: Soil Microbiome Analysis

This repository contains a reproducible QIIME 2 workflow for amplicon-based soil microbiome analysis.

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
│   ├── 04_taxonomy.sh
│   └── 05_diversity.sh
│
├── single-end/
│   ├── 01_import.sh
│   ├── 02_primer_removal.sh
│   ├── 03_dada2.sh
│   ├── 04_taxonomy.sh
│   └── 05_diversity.sh
│
├── README.md
├── environment.yml
└── .gitignore
