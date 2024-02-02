trait=$1
weight=$2
dir_GWAS="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_GWAS"
dir_SMR="/home/disk1/common_data/SMR_datasets/eqtldata"
dir_res="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_SMR/xqtl"

/home/disk3/luolingxue/software/smr_linux_x86_64 --bfile /home/disk1/common_data/SMR_datasets/ref9545380_bfile/ref9545380_bfile --gwas-summary ${dir_GWAS}/${trait}.ma --beqtl-summary ${dir_SMR}/${weight} --out ${dir_res}/${trait}.${weight} --thread-num 10
