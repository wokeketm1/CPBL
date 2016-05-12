library(dplyr)

off_db_path <- "E:/CPBL/offensive_db/functions/judy/1.重算壘包狀況/input/2014_output0512.csv" 
off_db <- read.csv(off_db_path, header=TRUE, sep=",")

for(i in 1: nrow(off_db)){
# complete.cases() <->  is.na()
if(is.na(off_db$out[i])){
  off_db$out[i]=as.factor("零出局")
}
#b1 b2 b3 out
#NA NA NA NA
if(
is.na(off_db$base1[i]) & 
is.na(off_db$base2[i]) & 
is.na(off_db$base3[i]) & 
is.na(off_db$out[i])){
off_db$rem_type[i]=NA
}
#b1 b2 b3 out
#0  0 0   0
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=1
}
#b1 b2 b3 out
#1  0 0   0
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=4
}

#b1 b2 b3 out
#0  1 0   0
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=7
}

#b1 b2 b3 out
#0  0  1   0
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=10
}

#b1 b2 b3 out
#1  1  0   0
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=13
}

#b1 b2 b3 out
#1  0  1   0
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=16
}

#b1 b2 b3 out
#0  1  1   0
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=19
}

#b1 b2 b3 out
#1  1  1   0
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="零出局"){
  off_db$rem_type[i]=22
}



#b1 b2 b3 out
#0  0 0   1
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=2
}

#b1 b2 b3 out
#1  0 0   1
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=5
}

#b1 b2 b3 out
#0  1 0   1
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=8
}

#b1 b2 b3 out
#0  0  1   1
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=11
}


#b1 b2 b3 out
#1  1 0   1
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=14
}

#b1 b2 b3 out
#1  0  1   1
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=17
}

#b1 b2 b3 out
#0  1  1   1
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=20
}

#b1 b2 b3 out
#1  1  1   1
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="一出局"){
  off_db$rem_type[i]=23
}

#b1 b2 b3 out
#0  0 0   2
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=3
}

#b1 b2 b3 out
#1  0  0   2
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=6
}

#b1 b2 b3 out
#0  1  0   2
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=9
}

#b1 b2 b3 out
#0  0  1   2
if(
  is.na(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=12
}

#b1 b2 b3 out
#1  1  0   2
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  is.na(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=15
}

#b1 b2 b3 out
#1  0  1   2
if(
  complete.cases(off_db$base1[i]) & 
  is.na(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=18
}

#b1 b2 b3 out
#0  1  1   2
if(
  is.na(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=21
}

#b1 b2 b3 out
#1  1  1   2
if(
  complete.cases(off_db$base1[i]) & 
  complete.cases(off_db$base2[i]) & 
  complete.cases(off_db$base3[i]) & 
  off_db$out[i]=="二出局"){
  off_db$rem_type[i]=24
}
}
# saveRDS(off_db,"E:/CPBL/offensive_db/functions/judy/1.重算壘包狀況/output/off_db.RDS")
#篩選
output<-off_db
# 1. 設定
# 1-1. BASIC: (壘包出局情境為 1~24, 且後續得分為 0~100 的資料列)
odb_rtype <- output %>% filter(rem_type %in% c(1:24), follow.up %in% c(0:100), !(Player == ""))

# 1-2. TEAM: (客隊上半局為攻擊、主隊下半局為攻擊)
# or_away <- odb_rtype %>% filter(grepl(pattern = "統一", x = away, fixed = TRUE), grepl(pattern = "上", x = inning, fixed = TRUE)) 
# or_home <- odb_rtype %>% filter(grepl(pattern = "統一", x = home, fixed = TRUE), grepl(pattern = "下", x = inning, fixed = TRUE)) 
# odb_rtype <- rbind(or_away, or_home)

# 1-3. PLAYER: (以球員名字為篩選條件)
# odb_rtype <- odb_rtype %>% filter(game.player == "胡金龍")


# 2. Output
# 2-1. 計算 24 種 rem_type 的得分期望值
re_list <- list()
for (i in 1:24) {
  odb_r <- odb_rtype %>% filter(rem_type == i)
  r <- sum(odb_r$follow.up) / nrow(odb_r)
  # r <- nrow(odb_r)
  re_list[i] <- r
}

# 2-2. set the martix
re_matrix <- matrix(re_list, nrow = 8, byrow=T)
colnames(re_matrix) <- c("out0", "out1", "out2")
rownames(re_matrix) <- c("empty", "1B", "2B", "3B", "1B_2B", "1B_3B", "2B_3B", "1B_2B_3B")

# 2-3. output REM and Warning amount
re_matrix
summary(odb_rtype$special)
#write.csv(re_matrix,"E:/CPBL/offensive_db/functions/judy/1.重算壘包狀況/output/score_matrix.csv")
