# to get the significant assocaitions results
trait=$1
xWAS=$2

dir_res="/home/disk3/luolingxue/qtl_review_supplementary/raw"
dir=${dir_res}/${xWAS}/FUSION_assoc_test

more weightfortopfile | while read weight number; # weightfortopfile，a file containing two columns, obtained through the command 'join weight weightfortopfile' in Linux, in which weightfortopfile was from the featurenumber.sh. The columns1 is the file name of each weight for FUSION and column2 is the corresponding Number of features.
do
  b=0.05/$((number))
  echo $b
  res_dir=${dir}/$weight/${trait}
  aNumList=$(seq 22)
  for i in $aNumList;do
  cat ${res_dir}/${trait}.$i.dat | awk 'NR == 1 || $NF < $b' > ${res_dir}/${trait}.$i.top
  done
done
