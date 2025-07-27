# RNA-Seq
A. RNA-seq Analysis Pipeline for Oryza indica
This repository contains a complete workflow for processing RNA-seq data (SRA to counts) using NCBI SRA Toolkit, Trimmomatic, FastQC, HISAT2, and featureCounts.
1. Download & Convert SRA to FASTQ
2. Quality Check
3. Quality Trimming
4. Post-trim Quality Check
5. Index Reference Genome
6. Align Reads
7. Generate Feature Counts
8. Extract Read Counts
9. Cleanup Intermediate Files

B. This repository provides an R-based workflow for analyzing RNA-Seq read count data, performing normalization, PCA, heatmaps, and identifying differentially expressed genes (DEGs) using DESeq2. 
Set Working Directory & Load Packages DESeq2
1. Load Read Count & Metadata
2. Construct DESeq2 Dataset
3. Principal Component Analysis (PCA)
4. Sample Distance Heatmap
5. Differential Expression Analysis
6. Filter Significant DEGs & Export
7. Visualization


C. PPI Network, Regulatory Gene Identification, and Functional Annotation Workflow
Protein-Protein Interaction (PPI) & Functional Annotation Pipeline
This repository documents the workflow for analyzing differentially expressed genes (DEGs), constructing PPI networks, identifying regulatory and resistance genes, and performing functional annotations using online bioinformatics tools.
1. Protein-Protein Interaction (PPI) Network Analysis
Tool: STRING Database
Visualization: Cytoscape
Hub Gene Detection: CytoHubba Plugin
2. Regulatory & Resistance Gene Identification
Transcription Factor Prediction: PlantTFDB was used to predict TF families for DEGs.
Resistance Gene Detection: PRGdb DRAGO3 was used to annotate resistance-related genes among DEGs.
4. Functional Annotation of Significant Genes
Tool: ShinyGO
