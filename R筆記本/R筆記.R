#1
#讀取用
setwd("D:/VE")
getwd()
logname<-list.files("D:/VE", pattern="*.csv")

for(i in 1:length(logname)){
xlog<-read.csv(paste0("D:/VE/",logname[i]))
x<-cbind(xlog,c(logname[i]))
output<-paste0(logname[i])
assign(output,x)
}

#2
#R by mscmd https://www.youtube.com/watch?v=A1IIcZW5UrI
#http://stackoverflow.com/questions/5604698/java-programming-call-an-exe-from-java-and-passing-parameters
#上面內容的java改寫
#Process process = new ProcessBuilder("C:\\PathToExe\\Rscript.exe","xxx.R","params").start();


#3
.e <- list()
f <- function() {
  .e$a <- 1
  browser()
}
f()
.e$a


#4.
x <- "http://www.mobile01.com/topiclist.php?f=315&p=1"
txt <- readLines(x, encoding = "UTF-8")
txt <- txt[grep("<p>", txt)]
