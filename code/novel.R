trait=$1
gwas_file=$2
gene_file=${trait}_resgene
library("data.table")
gwas_data <- fread(${gwas_file}, sep = "\t", header = TRUE)
res <- read.table(${gene_file}, sep = "\t", header = T)

range <- 1000000
min_pval_result <- vector("numeric", nrow(res))
snp_result <- vector("character", nrow(res))

for (i in 1:nrow(res)) {
  gene <- res[i,]
  start_range <- gene$start_position - range
  end_range <- gene$end_position + range
  gwas_subset <- subset(gwas_data, CHR == gene$CHR & BP >= start_range & BP <= end_range)
  min_pval <- min(gwas_subset$PVAL)
  snp <- gwas_subset$SNP[which.min(gwas_subset$PVAL)]
  min_pval_result[i] <- min_pval
  snp_result[i] <- snp
}

res$min_pval <- min_pval_result
res$snp <- snp_result
head(res)
write.table(res, file = ${trait}, sep = "\t", row.names = FALSE, quote = FALSE)