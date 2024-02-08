# to sum up the significant assocaitions results from chromosome1-22 based on the results file from top.sh
trait=$1
xWAS=$2

dir_res="/home/disk3/luolingxue/qtl_review_supplementary/raw"
dir=${dir_res}/${xWAS}/FUSION_assoc_test
res="/home/disk3/luolingxue/qtl_review_supplementary/raw"
res_xWAS=${res}/${xWAS}

more weight | while read weight
do
  res_dir=${dir}/${weight}/${trait}
  aim_dir="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_xWAS/dat_summary_GTEx"
  cd ${aim_dir}
  mkdir -p ${weight}
  cat ${res_dir}/${trait}.*.top | sort -u > ${aim_dir}/${weight}/${trait}.top
done
