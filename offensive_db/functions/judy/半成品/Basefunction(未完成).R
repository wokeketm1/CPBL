Basefunction=function(){

if((out[2]==out[1])&&(result[2]!="")){

if(result[1]=="玂癳"){
  Base1player[2]=player[1]	
}

if(result[1]=="ゴ"){

substr(x,regexpr("[ゴ]", x[2])-1,regexpr("[ゴ]", x[2])-1)=="耂"

	if(ゴ == "耂"){ //耂ゴ耂禲玱禲耂ê﹚穦弧┮璝ゅ痹瓃筁璶疭alertㄓ
		耂玡ê砞Θ跑计 hitNum;
		switch(hitNum{
			1: 次ゴ == 硂次耂;
			   次耂==硂次耂;
			   次耂==硂次耂; break;
			2: 次ゴ == 硂次耂;
			   次耂==硂次耂; break;
			3: 次ゴ == 硂次耂; break;
					
		}
	}else{ //糶"ゴ"猵跌耂ゴ
		次ゴ == 硂次耂;
		次耂==硂次耂;
		次耂==硂次耂;
		}
}

}



return(Base)
}


#000 0
#100 1
#010 2
#001 3
#110 4
#011 5
#101 6
#111 7
##Ы
up=character(length(x))
down=character(length(x))
base=character(length(x))
up[grep("[0-9][]",x)]=x[grep("[0-9][]",x)]
down[grep("[0-9][]",x)]=x[grep("[0-9][]",x)]
inning=paste0(up,down)

base[which(inning!="")]=0
base[which(inning!="")+1]=0

for(i in ((which(inning!=""))[1]+2):((which(inning!=""))[2]-1)){

if(grepl("Ы",x[i])&&grepl("炳",x[i])){
base[i]="0"
}
if(grepl("耂ゴ",x[i])&&base[i-1]=="0"){
base[i]="1"
}
}