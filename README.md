# xQTL-analysis
# This repository is set up for storing the code of xQTL analysis using SMR and FUSION
# We explained the file one by 
# 1.fusion_assoc_dat.sh 
Performing the expression imputation by the traits and the xQTL.
traits include SCZ, BP, ADHD, MDD, ASD
xWAS include eQTL, sQTL, pQTL, m6AQTL

# 2.featurenumber.sh
to calculate the number of molecular feature in each moelcular file to adjust the pvalue and store them in the file called 'weightfortopfile'. 

# 3.top.sh
to get the significant assocaitions results by adusting the number of feature, which corresponds to the results in the second column of weightfortopfile.

# 4.sortdat.sh
to sum up the significant assocaitions results from chromosome1-22 based on the results file from top.sh.

# 5.sort_by_diseases.sh
to sum up the significant asscoaition results in the all weight file for each disease based on the results file from sortdat.sh

# 6.smr.sh
the code was based on the software smr downloaded from Yang lab (https://yanglab.westlake.edu.cn/software/smr/#Download)
detailed parameters can see https://yanglab.westlake.edu.cn/software/smr/#OptionsReference
traits include SCZ, BP, ADHD, MDD, ASD
weight include eQTL, sQTL, pQTL, m6AQTL, mQTL

# 7.novel.R
This is to find the novel genes which is constrast to the genes found in GWAS level.
traits is a file containing the names of five diseases
