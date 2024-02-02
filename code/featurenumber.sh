# to calculate the number of molecular feature in each moelcular file to adjust the pvalue and store them in the file called 'weightfortopfile'. 
dir="/home/disk3/luolingxue/downloadfile/GTEx"
more weight | while read weight 
do
wc -l ${dir}/${weight}.pos >> weightfortopfile
done
