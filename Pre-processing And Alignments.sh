#upload data to NCBI

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844554/SRR27844554.sra 
#Quality check 
fastqc SRR27844554_1.fastq.gz 
fastqc SRR27844554_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844554_1.fastq.gz SRR27844554_2.fastq.gz SRR27844554_forward_paired.fq.gz SRR27844554_forward_unpaired.fq.gz SRR27844554_reverse_paired.fq.gz SRR27844554_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844554_1.fastq.gz
rm -rf SRR27844554_2.fastq.gz
#after trim Quality check
fastqc SRR27844554_forward_paired.fq.gz
fastqc SRR27844554_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844554_forward_paired.fq.gz -2 SRR27844554_reverse_paired.fq.gz -S SRR27844554.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844554_read SRR27844554.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844554_read >SRR27844554_read_Count
#sam file remove
rm -rf SRR27844554.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844555/SRR27844555.sra 
#Quality check 
fastqc SRR27844555_1.fastq.gz 
fastqc SRR27844555_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844555_1.fastq.gz SRR27844555_2.fastq.gz SRR27844555_forward_paired.fq.gz SRR27844555_forward_unpaired.fq.gz SRR27844555_reverse_paired.fq.gz SRR27844555_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844555_1.fastq.gz
rm -rf SRR27844555_2.fastq.gz
#after trim Quality check
fastqc SRR27844555_forward_paired.fq.gz
fastqc SRR27844555_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844555_forward_paired.fq.gz -2 SRR27844555_reverse_paired.fq.gz -S SRR27844555.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844555_read SRR27844555.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844555_read >SRR27844555_read_Count
#sam file remove
rm -rf SRR27844555.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844556/SRR27844556.sra 
#Quality check 
fastqc SRR27844556_1.fastq.gz 
fastqc SRR27844556_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844556_1.fastq.gz SRR27844556_2.fastq.gz SRR27844556_forward_paired.fq.gz SRR27844556_forward_unpaired.fq.gz SRR27844556_reverse_paired.fq.gz SRR27844556_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844556_1.fastq.gz
rm -rf SRR27844556_2.fastq.gz
#after trim Quality check
fastqc SRR27844556_forward_paired.fq.gz
fastqc SRR27844556_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844556_forward_paired.fq.gz -2 SRR27844556_reverse_paired.fq.gz -S SRR27844556.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844556_read SRR27844556.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844556_read >SRR27844556_read_Count
#sam file remove
rm -rf SRR27844556.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844557/SRR27844557.sra 
#Quality check 
fastqc SRR27844557_1.fastq.gz 
fastqc SRR27844557_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844557_1.fastq.gz SRR27844557_2.fastq.gz SRR27844557_forward_paired.fq.gz SRR27844557_forward_unpaired.fq.gz SRR27844557_reverse_paired.fq.gz SRR27844557_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844557_1.fastq.gz
rm -rf SRR27844557_2.fastq.gz
#after trim Quality check
fastqc SRR27844557_forward_paired.fq.gz
fastqc SRR27844557_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844557_forward_paired.fq.gz -2 SRR27844557_reverse_paired.fq.gz -S SRR27844557.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844557_read SRR27844557.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844557_read >SRR27844557_read_Count
#sam file remove
rm -rf SRR27844557.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844558/SRR27844558.sra 
#Quality check 
fastqc SRR27844558_1.fastq.gz 
fastqc SRR27844558_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844558_1.fastq.gz SRR27844558_2.fastq.gz SRR27844558_forward_paired.fq.gz SRR27844558_forward_unpaired.fq.gz SRR27844558_reverse_paired.fq.gz SRR27844558_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844558_1.fastq.gz
rm -rf SRR27844558_2.fastq.gz
#after trim Quality check
fastqc SRR27844558_forward_paired.fq.gz
fastqc SRR27844558_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844558_forward_paired.fq.gz -2 SRR27844558_reverse_paired.fq.gz -S SRR27844558.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844558_read SRR27844558.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844558_read >SRR27844558_read_Count
#sam file remove
rm -rf SRR27844558.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844559/SRR27844559.sra 
#Quality check 
fastqc SRR27844559_1.fastq.gz 
fastqc SRR27844559_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844559_1.fastq.gz SRR27844559_2.fastq.gz SRR27844559_forward_paired.fq.gz SRR27844559_forward_unpaired.fq.gz SRR27844559_reverse_paired.fq.gz SRR27844559_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844559_1.fastq.gz
rm -rf SRR27844559_2.fastq.gz
#after trim Quality check
fastqc SRR27844559_forward_paired.fq.gz
fastqc SRR27844559_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844559_forward_paired.fq.gz -2 SRR27844559_reverse_paired.fq.gz -S SRR27844559.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844559_read SRR27844559.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844559_read >SRR27844559_read_Count
#sam file remove
rm -rf SRR27844559.sam


#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844560/SRR27844560.sra 
#Quality check 
fastqc SRR27844560_1.fastq.gz 
fastqc SRR27844560_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844560_1.fastq.gz SRR27844560_2.fastq.gz SRR27844560_forward_paired.fq.gz SRR27844560_forward_unpaired.fq.gz SRR27844560_reverse_paired.fq.gz SRR27844560_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844560_1.fastq.gz
rm -rf SRR27844560_2.fastq.gz
#after trim Quality check
fastqc SRR27844560_forward_paired.fq.gz
fastqc SRR27844560_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844560_forward_paired.fq.gz -2 SRR27844560_reverse_paired.fq.gz -S SRR27844560.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844560_read SRR27844560.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844560_read >SRR27844560_read_Count
#sam file remove
rm -rf SRR27844560.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844561/SRR27844561.sra 
#Quality check 
fastqc SRR27844561_1.fastq.gz 
fastqc SRR27844561_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844561_1.fastq.gz SRR27844561_2.fastq.gz SRR27844561_forward_paired.fq.gz SRR27844561_forward_unpaired.fq.gz SRR27844561_reverse_paired.fq.gz SRR27844561_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844561_1.fastq.gz
rm -rf SRR27844561_2.fastq.gz
#after trim Quality check
fastqc SRR27844561_forward_paired.fq.gz
fastqc SRR27844561_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844561_forward_paired.fq.gz -2 SRR27844561_reverse_paired.fq.gz -S SRR27844561.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844561_read SRR27844561.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844561_read >SRR27844561_read_Count
#sam file remove
rm -rf SRR27844561.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844562/SRR27844562.sra 
#Quality check 
fastqc SRR27844562_1.fastq.gz 
fastqc SRR27844562_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844562_1.fastq.gz SRR27844562_2.fastq.gz SRR27844562_forward_paired.fq.gz SRR27844562_forward_unpaired.fq.gz SRR27844562_reverse_paired.fq.gz SRR27844562_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844562_1.fastq.gz
rm -rf SRR27844562_2.fastq.gz
#after trim Quality check
fastqc SRR27844562_forward_paired.fq.gz
fastqc SRR27844562_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844562_forward_paired.fq.gz -2 SRR27844562_reverse_paired.fq.gz -S SRR27844562.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844562_read SRR27844562.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844562_read >SRR27844562_read_Count
#sam file remove
rm -rf SRR27844562.sam

#convert SRA to fastq file format
fastq-dump --split-files --gzip SRR27844563/SRR27844563.sra 
#Quality check 
fastqc SRR27844563_1.fastq.gz 
fastqc SRR27844563_2.fastq.gz 
#quality trim 
java -jar ./Trimmomatic-0.39/trimmomatic-0.39.jar PE SRR27844563_1.fastq.gz SRR27844563_2.fastq.gz SRR27844563_forward_paired.fq.gz SRR27844563_forward_unpaired.fq.gz SRR27844563_reverse_paired.fq.gz SRR27844563_reverse_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36 -threads 12
#Data removes
rm -rf SRR27844563_1.fastq.gz
rm -rf SRR27844563_2.fastq.gz
#after trim Quality check
fastqc SRR27844563_forward_paired.fq.gz
fastqc SRR27844563_reverse_paired.fq.gz 
#Index create
hisat2-build -f oryza_indica.fa oryza_indica
#alignment with reference of indica group
hisat2 -x /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica -1 SRR27844563_forward_paired.fq.gz -2 SRR27844563_reverse_paired.fq.gz -S SRR27844563.sam --summary-file SRR4423501.log -p 16
#Feature Count
featureCounts -p -a /mnt/wwn-0x50014ee210f92bc0-part1/DrAk/Ref_oryza_indica/oryza_indica.gtf -o SRR27844563_read SRR27844563.sam -T 16
#count Filter
awk '{print $1,$7}' SRR27844563_read >SRR27844563_read_Count
#sam file remove
rm -rf SRR27844563.sam




