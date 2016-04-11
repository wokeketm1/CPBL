
x=read.csv(paste0("C:/Users/Student/Desktop/output/output0411.csv"))
y=x[,15]
which((grepl("[一][出][局]",y)&grepl("[三][出][局]",y))=="TRUE")