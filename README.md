# 🧬 bulk-rnaseq-raw-to-counts

### From FASTQ to Gene Count Matrix

---

## 📌 Overview

This repository provides a **reproducible RNA-seq analysis workflow** from raw FASTQ files to gene-level count matrix generation.
It is designed for **bulk RNA-seq data** and integrates widely used bioinformatics tools into a streamlined, reproducible pipeline.

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

## 🧩 Pipeline Design

This workflow follows a modular design:

* Individual steps are implemented as separate scripts in the `scripts/` directory
* The `run_pipeline.sh` file executes the full pipeline sequentially

This design improves reproducibility, scalability, and ease of debugging.

---

## ⚙️ Tools Used

* FastQC
* fastp
* STAR
* featureCounts (Subread)

---

## 📁 Repository Structure

```
bulk-rnaseq-raw-to-counts/
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

```bash
git clone https://github.com/zaibahasankhan/bulk-rnaseq-raw-to-counts.git
cd bulk-rnaseq-raw-to-counts
```

### 2. Create Conda Environment

```bash
conda env create -f environment.yml
conda activate rnaseq_pipeline
```

---

## 🚀 Quick Start

```bash
git clone https://github.com/zaibahasankhan/bulk-rnaseq-raw-to-counts.git
cd bulk-rnaseq-raw-to-counts
conda env create -f environment.yml
conda activate rnaseq_pipeline
bash run_pipeline.sh
```

---

## ▶️ Usage

Run the complete pipeline:

```bash
bash run_pipeline.sh
```

Or run step-wise:

```bash
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

## 📂 Key Output Files

* `results/fastqc/` – FastQC reports
* `results/trimmed/` – Trimmed FASTQ files
* `results/aligned/` – Sorted BAM files
* `results/counts/gene_counts.txt` – Gene count matrix

---

## 🔗 Downstream Analysis

Differential expression analysis is available here:

👉 https://github.com/zaibahasankhan/RNAseq-DESeq2-Analysis

---

## 🚫 Notes

* Large files (FASTQ, BAM, STAR index) are excluded using `.gitignore`
* Replace input data with your dataset before running the pipeline
* Ensure genome and annotation compatibility

---

## 👩‍💻 Author

**Dr. Zaiba Hasan Khan**
Bioinformatician | Genomics | RNA-seq | Microbiome Research

---

## 📜 License

This project is licensed under the MIT License.
