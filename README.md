# xQTL-analysis.
# This repository is set up for storing the code of xQTL analysis using SMR and FUSION.
# We explained the file one by one.
# 1.fusion_assoc_dat.sh 
Performing the expression imputation by the traits and the xQTL.
"traits" includes SCZ, BP, ADHD, MDD, ASD.
"xWAS" includes eQTL, sQTL, pQTL, m6AQTL.

# 2.featurenumber.sh
Ccalculating the number of molecular feature in each moelcular file, which was used as input to adjust the pvalue and store them in the file called 'weightfortopfile'. 

# 3.top.sh
Getting the significant assocaitions results by adusting the number of feature, which corresponds to the results in the second column of weightfortopfile.

# 4.sortdat.sh
To sum up the significant assocaitions results from chromosome 1-22 based on the results file from top.sh.

# 5.sort_by_diseases.sh
To sum up the significant asscoaition results in the all weight file for each disease based on the results file from sortdat.sh.

# 6.smr.sh
The code was based on the software smr downloaded from Yang lab (https://yanglab.westlake.edu.cn/software/smr/#Download).
Detailed parameters can see https://yanglab.westlake.edu.cn/software/smr/#OptionsReference.
"traits" includes SCZ, BP, ADHD, MDD, ASD.
"weight" includes eQTL, sQTL, pQTL, m6AQTL, mQTL.

# 7.novel.R
This is used to find the novel genes which are constrast to the genes found in GWAS level.
"traits" is a file containing the names of five diseases.
