############################################################
# Bulk RNA-seq analysis: Raw FASTQ to Count Matrix
# Author: Dr. Zaiba Hasan Khan
############################################################

# Description:
# This script performs an end-to-end bulk RNA-seq preprocessing
# workflow starting from raw FASTQ files to gene-level count
# matrices using R-based tools.

# Workflow:
# 1. Download RNA-seq FASTQ files
# 2. Quality control (FastQC)
# 3. Download reference genome & annotation
# 4. Build alignment index (Rsubread)
# 5. Align reads to reference genome
# 6. Generate gene-level count matrix
