#!/bin/bash

for bam in bam/*bam
do
  echo "Submitting" $bam
  sbatch --mem=4G --partition=broadwl run-featurecounts.R $bam
done
