#!/usr/bin/env bash

#SBATCH --job-name=How_to_Train_All
#SBATCH --qos=short
#SBATCH --mail-user=dav49@pitt.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --time=09:00:00
#SBATCH --partition=smp
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=60000
#SBATCH --output=smp-shell-script.out

# Set memory limit (avoid R error "C stack usage is too high")
let lim=1024\*60000
ulimit -s $lim
ulimit -s

module load gcc/8.2.0 r/4.1.0 pandoc/2.5
Rscript -e "rmarkdown::render('How_to_Train_Your_Classifier.Rmd',
                              params=list(\`SLURM_job-id\`=$SLURM_JOB_ID,
                                          SLURM_nodeid='$SLURM_NODELIST',
                                          SBATCH_partition='smp',
                                          SBATCH_nodes=1,
                                          \`SBATCH_tasks-per-node\`=4,
                                          \`SBATCH_cpus-per-task\`=4,
                                          SBATCH_mem=60000))"

# # Move output file---preferable to specifying output_file in rmarkdown::render()
# # because in that case knitr doesn't correctly load cached chunks.
# mv ../Test-Script-2/How_to_Train_Your_Classifier.html ../Output/How_to_Train_All_smp_1_4_4_60000.html

crc-job-stats.py
