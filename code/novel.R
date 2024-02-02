library("data.table")
range <- 1000000

  for (trait in traits){
    gwas_data <- fread(paste0(trait,".gwas"), sep = "\t", header = TRUE)
    res <- read.table(paste0(trait,"_resgene"), sep = "\t", header = T)
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
    write.table(res, file = trait, sep = "\t", row.names = FALSE, quote = FALSE)
  }
# traits is a file contaiing the names of five diseases
