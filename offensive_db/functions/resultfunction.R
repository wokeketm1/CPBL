resultfunction=function(){

x1 <- character(length(x))
x2 <- character(length(x))
x3 <- character(length(x))
x4 <- character(length(x))
x5 <- character(length(x))
x6 <- character(length(x))
x7 <- character(length(x))
x8 <- character(length(x))
x9 <- character(length(x))
x10 <- character(length(x))
x11 <- character(length(x))
x12 <- character(length(x))
x13 <- character(length(x))
x14 <- character(length(x))
x15 <- character(length(x))
x16 <- character(length(x))
x17 <- character(length(x))
x18 <- character(length(x))
x19 <- character(length(x))
x20 <- character(length(x))
x21 <- character(length(x))
x22 <- character(length(x))
x23 <- character(length(x))
x24 <- character(length(x))
x25 <- character(length(x))
x26 <- character(length(x))
x27 <- character(length(x))
x28 <- character(length(x))
x29 <- character(length(x))
x30 <- character(length(x))
x31 <- character(length(x))
x32 <- character(length(x))
x33 <- character(length(x))
x34 <- character(length(x))
x35 <- character(length(x))
x36 <- character(length(x))

x1[grep("[一][壘][安][打]",x)]="一壘安打"
x2[grep("[二][壘][安][打]",x)]="二壘安打"
x3[grep("[三][壘][安][打]",x)]="三壘安打"
x4[grep("[全][壘][打]",x)]="全壘打"
x5[grep("[三][振]",x)]="三振"
x6[grep("[刺][殺]",x)]="刺殺"
x7[grep("[接][殺]",x)]="接殺"
x8[grep("[保][送]",x)]="保送"
x8[grep("[四][壞][球]",x)]="保送"
x8[grep("[觸][身][球][保][送]",x)]="保送"
x9[grep("[踩][一][壘][壘][包]",x)]="封殺"
x9[grep("[踩][二][壘][壘][包]",x)]="封殺"
x9[grep("[踩][三][壘][壘][包]",x)]="封殺"
x9[grep("[接][到][傳][向][一][壘]",x)]="封殺"
x9[grep("[接][到][傳][向][二][壘]",x)]="封殺"
x9[grep("[接][到][傳][向][三][壘]",x)]="封殺"
x9[grep("[傳][給][補][位][的][投][手]",x)]="封殺"
x9[grep("[滾][地][球][封][殺]",x)]="封殺"
x9[grep("[封][殺]",x)]="封殺"
x9[grep("[自][踩][壘][包]",x)]="封殺"
x9[grep("[接][球][後][傳]",x)]="封殺"
x10[grep("[盜][1][壘][成][功]",x)]="盜壘"
x10[grep("[盜][2][壘][成][功]",x)]="盜壘"
x10[grep("[盜][3][壘][成][功]",x)]="盜壘"
x10[grep("[盜][本][壘][成][功]",x)]="盜壘"
x10[grep("[盜][壘][成][功]",x)]="盜壘"
x11[grep("[盜][一][壘][失][敗]",x)]="盜壘失敗"
x11[grep("[盜][二][壘][失][敗]",x)]="盜壘失敗"
x11[grep("[盜][三][壘][失][敗]",x)]="盜壘失敗"
x11[grep("[盜][本][壘][失][敗]",x)]="盜壘失敗"
x11[grep("[盜][壘][失][敗]",x)]="盜壘失敗"
x12[grep("[投][手][暴][投]",x)]="投手暴投"
x13[grep("[內][野][安][打]",x)]="內野安打"
x14[grep("[右][外][野][安][打]",x)]="右外野安打"
x15[grep("[中][外][野][安][打]",x)]="中外野安打"
x16[grep("[左][外][野][安][打]",x)]="左外野安打"
x17[grep("[失][誤]",x)]="失誤"
x18[grep("[高][飛][犧][牲][打]",x)]="高飛犧牲打"
x19[grep("[必][死][球]",x)]="必死球"
x20[grep("[穿][越][安][打]",x)]="穿越安打"
x21[grep("[德][州][安][打]",x)]="德州安打"
x22[grep("[穿][越][安][打]",x)]="穿越安打"
x23[grep("[形][成][安][打]",x)]="形成安打"
x24[grep("[平][飛][安][打]",x)]="平飛安打"
x25[grep("[場][地][安][打]",x)]="場地安打"
x26[grep("[再][見][安][打]",x)]="再見安打"
x27[grep("[雙][殺]",x)]="雙殺"
x28[grep("[觸][殺]",x)]="觸殺"
x29[grep("[觸][擊]",x)]="觸擊"
x30[grep("[觸][擊][失][敗]",x)]="觸擊失敗"
x31[grep("[犧][牲][觸][擊]",x)]="犧牲觸擊"
x32[grep("[犧][牲][短][打]",x)]="犧牲短打"
x32[grep("[犧][牲][打]",x)]="犧牲短打"
x33[grep("[犧][牲][飛][球]",x)]="犧牲飛球"
x35[grep("[再][見][安][打]",x)]="再見安打"
x36[grep("[夾][殺]",x)]="夾殺"



result=paste0(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36)
return(result)
}