
library(dplyr)
log <- matrix(c(8000,100,2000,0),ncol=2,byrow=TRUE)
rownames(log) <- c("中","不中")
colnames(log) <- c("亂猜","ML")
log <- as.table(log)
log%>%fisher.test()
#p-value = 4.09e-10<0.05
#有充分的證據支持Ml有效
#http://math.nsysu.edu.tw/ezfiles/87/1087/img/495/h.pdf