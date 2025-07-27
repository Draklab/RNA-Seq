setwd("/Users/NIMS/Desktop/miRNA_data/NovelDEG/")
#R package Installations
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

library(DESeq2)

#>1 Extract Data
ReadData<-read.table(file = "Read_count.txt",header = T, row.names = 1,sep = "\t")
Condition<- read.table(file = "Conditions.txt",header = T,sep = "\t",row.names=1)

#>2 Matrix constructions
rownames(Condition) <- sub("fb", "", rownames(Condition))
all(rownames(Condition) %in% colnames(ReadData))
all(rownames(Condition) == colnames(ReadData))
ReadData <- ReadData[, rownames(Condition)]
all(rownames(Condition) == colnames(ReadData))
library(DESeq2)
dds<-DESeqDataSetFromMatrix(countData = ReadData,colData = Condition,design = ~Conditions)
featureData<-data.frame(gene=rownames(ReadData))
mcols(dds)<-DataFrame(mcols(dds),featureData)
mcols(dds)

#>3 Principal component plot of the samples
#3.a calculates a variance stabilizing transformation
nsb = sum(rowMeans(counts(dds, normalized=TRUE)) > 5)
vsd <- vst(dds, blind=F)
tiff(filename="Sample.tiff", width=2500, height=2200, res=300)
plotPCA(vsd, intgroup=c("Conditions", "type"))
dev.off()

tiff(filename="PCA1.tiff", width=2500, height=2200, res=300)
plotPCA(vsd, intgroup=c("Conditions"))
dev.off()

#3.b Remove Batch Effect
library(limma)
assay(vsd) <- limma::removeBatchEffect(assay(vsd), vsd$sizeFactor)
tiff(filename="PCA_Sizefactor.tiff", width=2300, height=2000, res=300)
plotPCA(vsd, intgroup=c("Conditions", "type"))
dev.off()

tiff(filename="PCA_Sizefactor1.tiff", width=2300, height=2000, res=300)
plotPCA(vsd, intgroup=c("Conditions"))
dev.off()


#>4 Heatmap of the sample-to-sample distances
library("RColorBrewer")
library(pheatmap)
tiff(filename = "distance.tiff",width = 2300, height = 2000,res = 300)
sampleDists <- dist(t(assay(vsd)))
sampleDistMatrix <- as.matrix(sampleDists)
rownames(sampleDistMatrix) <- paste(vsd$condition, vsd$type, sep="-")
colnames(sampleDistMatrix) <- NULL
colors <- colorRampPalette( rev(brewer.pal(9, "Blues")) )(255)
pheatmap(sampleDistMatrix,clustering_distance_rows=sampleDists,clustering_distance_cols=sampleDists,col=colors)
dev.off()

#>5 Differential expression analysis
dds<-DESeq(dds)
resultsNames(dds)

#resS_Con<-results(dds,name = "Conditions_Tr_vs_Ca" ) ## wrong calculation log2(untreated / treated)
#resFus_Tri_Fus_lfc <- lfcShrink(dds, contrast=c("Conditions","Tr","Ca"), type="normal")
resTrCa<- results(dds, contrast=c("Conditions","Tr","Ca")) #log2(treated / untreated), as would be returned by contrast=c("condition","treated","untreated")

summary(resTrCa)

#>6 Export results to CSV files
library(tidyverse)
resfTrCa <- resTrCa %>%  data.frame() %>%  rownames_to_column(var="gene") %>% as_tibble()

res_sigTrCa <- resfTrCa %>%filter(padj < 0.05 & abs(log2FoldChange) > 2)

write.table(as.data.frame(res_sigTrCa),file = "res_sigTrCa.txt",sep = "\t",quote = F,row.names = F)

#>7 bOX PLOT
tiff(filename = "boxpltl.tiff", width = 2300, height = 2000,res = 300)
boxplot(assays(dds)[["cooks"]])
dev.off()

tiff(filename = "boxplot_normalization.tiff",height = 2300,width=2000,res=300)
boxplot(assay(vsd), xlab="", ylab="Log2 counts per million",las=2,main="Normalised Distributions")
dev.off()

#>8 Heatmap of the count matrix
library(pheatmap)
select <- order(rowMeans(counts(dds,normalized=TRUE)),decreasing=TRUE)[1:100]
df <- as.data.frame(colData(dds)[,c("Conditions","type")])
tiff(filename="heatmap.tiff", width=2300, height=2000, res=300)
pheatmap(assay(vsd)[select,], cluster_rows=F, show_rownames=T,cluster_cols=T,annotation_col = df)
dev.off()

library("gplots")
tiff(filename="heatmap2.tiff", width=2300, height=2000, res=300)

heatmap.2(assay(vsd)[select,], key=T,trace="none",density.info="histogram",col = greenred, margins = c(12, 15))
dev.off()

#> 9 Generate an MA plot
tiff(filename="MATrCa.tiff", width=2300, height=2000, res=300)
plotMA(resTrCa,ylim=c(-5,5), main = "Ma Plot")
dev.off()

#>10 Generate a Volcano Plot
library(EnhancedVolcano)
tiff(filename = "Volacano.tiff",height=2300,width = 2000,res = 300)
EnhancedVolcano(resTrCa,lab = rownames(resTrCa),x = 'log2FoldChange', y = 'pvalue')
dev.off()

#Thank You
