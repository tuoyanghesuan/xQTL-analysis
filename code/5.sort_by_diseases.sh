# to sum up the significant asscoaition results in the all weight file for each disease based on the results file from sortdat.sh
trait=$1
res_dir="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_xWAS/arrange_by_diseases"
dir="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_xWAS/dat_summary_GTEx"

more weight | while read weight
do
  aim_dir=${dir}/$weight
  for line in `cat ${aim_dir}/${trait}.top`;
  do
    echo $line >> ${res_dir}/${trait}.all.top
  done
done
