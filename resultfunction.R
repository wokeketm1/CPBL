resultfunction=function(){

result=character(length(x))
result[grep("[一][壘][安][打]",x)]="一壘安打"
result[grep("[二][壘][安][打]",x)]="二壘安打"
result[grep("[三][壘][安][打]",x)]="三壘安打"
result[grep("[全][壘][打]",x)]="全壘打"
result[grep("[三][振]",x)]="三振"
result[grep("[刺][殺]",x)]="刺殺"
result[grep("[接][殺]",x)]="接殺"
result[grep("[保][送]",x)]="保送"
result[grep("[四][壞][球]",x)]="保送"
result[grep("[觸][身][球][保][送]",x)]="保送"
result[grep("[踩][一][壘][壘][包]",x)]="封殺"
result[grep("[接][到][傳][向][一][壘]",x)]="封殺"
result[grep("[接][到][傳][向][二][壘]",x)]="封殺"
result[grep("[接][到][傳][向][三][壘]",x)]="封殺"
result[grep("[傳][給][補][位][的][投][手]",x)]="封殺"
result[grep("[盜][壘][成][功]",x)]="盜壘"
result[grep("[盜][一][壘][失][敗]",x)]="盜壘失敗"
result[grep("[盜][二][壘][失][敗]",x)]="盜壘失敗"
result[grep("[盜][三][壘][失][敗]",x)]="盜壘失敗"
result[grep("[盜][本][壘][失][敗]",x)]="盜壘失敗"
result[grep("[盜][壘][失][敗]",x)]="盜壘失敗"
result[grep("[投][手][暴][投]",x)]="投手暴投"
result[grep("[內][野][安][打]",x)]="內野安打"
result[grep("[中][外][野][安][打]",x)]="中外野安打"
result[grep("[失][誤]",x)]="失誤"
result[grep("[高][飛][犧][牲][打]",x)]="高飛犧牲打"



return(result)
}