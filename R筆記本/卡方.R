male<-c(Bush=315,Perot=152,Clinton=337)
female<-c(Bush=346,Perot=126,Clinton=571)
rbind(male,female) #輸入男女資料後，排成矩陣
chisq.test(rbind(male,female))