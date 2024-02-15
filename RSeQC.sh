#!/bin/sh

for i in /leyao/Active/saran/RNA2/STAR/*sortedByCoord.out.bam; do name=$(basename ${i} .sortedByCoord.out.bam);
       	echo ${name};
	python3 /home/sara/Downloads/RSeQC-5.0.1/scripts/split_bam.py -i /leyao/Active/saran/RNA2/STAR/${name}.sortedByCoord.out.bam -r /home/sara/Downloads/RSeQC-5.0.1/scripts/hg38_rRNA.bed -o /leyao/Active/saran/RNA2/finalRNAdata/RSeQC_Out/${name}_ ; done

