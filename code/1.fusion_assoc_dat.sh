# to get the associations results
trait=$1
xWAS=$2
dir_GWAS="/home/disk3/luolingxue/qtl_review_supplementary/raw/dir_GWAS"
raw="/home/disk3/luolingxue/downloadfile/raw"
res="/home/disk3/luolingxue/qtl_review_supplementary/res"
dir_FUSION="/home/disk3/luolingxue/second/fusion_twas-master"
dir_ld_ref="/home/disk3/luolingxue/second/fusion_twas-master/LDREF"

dir_xWAS=${raw}/${xWAS}
res_xWAS=${res}/${xWAS}

more weight | while read weight  # weight is a file containing the file names of each weight for FUSION.
do
  dir_assoc_test=${res_xWAS}/FUSION_assoc_test/${weight}/${trait}   
  mkdir -p ${dir_assoc_test}
  cd ${dir_assoc_test}
  for CHR in {1..22}
  do
    echo "run FUSION.assoc_test.R for ${trait} in ${weight}"
    echo "chr${CHR}"
    Rscript ${dir_FUSION}/FUSION.assoc_test.R \
    --sumstats ${dir_GWAS}/${trait}.sumstats.gz \
    --weights ${dir_xWAS}/${weight}.pos \
    --weights_dir ${dir_xWAS}/ \
    --ref_ld_chr ${dir_ld_ref}/1000G.EUR. \
    --chr ${CHR} \
    --out ${dir_assoc_test}/${trait}.${CHR}.dat
  done
done
