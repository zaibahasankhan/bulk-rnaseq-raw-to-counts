# 🧬 RNA-seq End-to-End Pipeline

## 📌 Overview

This repository provides a **reproducible RNA-seq analysis workflow** starting from raw FASTQ files to gene-level count matrix generation.
It is designed for **bulk RNA-seq data** and integrates widely used bioinformatics tools in a streamlined pipeline.

---

## 🔬 Workflow

```
FASTQ → FastQC → fastp → STAR → featureCounts → Count Matrix
```

### Step-wise Description

1. **Quality Control** – Assess raw reads using FastQC
2. **Trimming** – Remove adapters and low-quality bases using fastp
3. **Alignment** – Map reads to reference genome using STAR
4. **Quantification** – Generate gene-level counts using featureCounts

---

## 📁 Repository Structure

```
RNAseq-EndToEnd-Pipeline/
│
├── data/                  # Input FASTQ files (not included)
├── reference/             # Genome FASTA and annotation GTF
├── scripts/               # Pipeline scripts
├── results/               # Output (ignored in Git)
├── docs/                  # QC reports (FastQC, fastp)
├── environment.yml        # Conda environment
├── run_pipeline.sh        # Master script
└── README.md
```

---

## ⚙️ Installation

### 1. Clone Repository

```
git clone https://github.com/zaibahasankhan/RNAseq-EndToEnd-Pipeline.git
cd RNAseq-EndToEnd-Pipeline
```

### 2. Create Conda Environment

```
conda env create -f environment.yml
conda activate rnaseq_pipeline
```

---

## ▶️ Usage

Run the complete pipeline using:

```
bash run_pipeline.sh
```

Or run step-wise:

```
bash scripts/01_fastqc.sh
bash scripts/02_fastp.sh
bash scripts/03_star_align.sh
bash scripts/04_featurecounts.sh
```

---

## 📊 Input Requirements

* Paired-end FASTQ files (`*_R1.fastq.gz`, `*_R2.fastq.gz`)
* Reference genome (`.fa`)
* Annotation file (`.gtf`)

---

## 📈 Output

* Quality control reports (FastQC)
* Trimmed reads (fastp)
* Aligned BAM files (STAR)
* Gene count matrix (`featureCounts`)

---

## 🚫 Notes

* Large files (FASTQ, BAM, STAR index) are excluded using `.gitignore`
* Replace input data with your own dataset before running the pipeline
* Ensure correct genome and annotation compatibility


---

## 👩‍💻 Author

**Dr. Zaiba Hasan Khan**
Bioinformatician | Genomics | RNA-seq | Microbiome Research

---

## 📜 License

This project is licensed under the MIT License.
