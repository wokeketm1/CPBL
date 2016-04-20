directionfunction=function(){


direction=character(length(x))
direction[grep("[游][擊]",x)]="左"
direction[grep("[中][外][野]",x)]="中"
direction[grep("[左][外][野]",x)]="左"
direction[grep("[右][外][野]",x)]="右"
direction[grep("[右][邊]",x)]="右"
direction[grep("[左][邊]",x)]="左"
direction[grep("[中][間]",x)]="中"
direction[grep("[內][野]",x)]="內"
direction[grep("[遊][擊][手][接][殺]",x)]="內"
direction[grep("[三][壘][手][接][殺]",x)]="內"
direction[grep("[二][壘][手][接][殺]",x)]="內"
direction[grep("[一][壘][手][接][殺]",x)]="內"
direction[grep("[補][手][接][殺]",x)]="內"
direction[grep("[投][手][接][殺]",x)]="內"
direction[grep("[遊][擊][手][方][向][平][飛]",x)]="內"
direction[grep("[遊][擊][方][向][平][飛]",x)]="內"
direction[grep("[三][壘][方][向][平][飛]",x)]="內"
direction[grep("[二][壘][方][向][平][飛]",x)]="內"
direction[grep("[一][壘][方][向][平][飛]",x)]="內"
direction[grep("[遊][擊][手][方][向][滾][地][球]",x)]="內"
direction[grep("[三][壘][滾][地][球]",x)]="內"
direction[grep("[二][壘][滾][地][球]",x)]="內"
direction[grep("[一][壘][滾][地][球]",x)]="內"
direction[grep("[三][壘][方][向][滾][地][球]",x)]="內"
direction[grep("[二][壘][方][向][滾][地][球]",x)]="內"
direction[grep("[一][壘][方][向][滾][地][球]",x)]="內"
direction[grep("[二][壘][方][向][滾][地][球]",x)]="內"
direction[grep("[三][壘][方][向][彈][跳][球]",x)]="內"
direction[grep("[二][壘][方][向][彈][跳][球]",x)]="內"
direction[grep("[一][壘][方][向][彈][跳][球]",x)]="內"
direction[grep("[三][壘][後][方][小][飛][球]",x)]="左"
direction[grep("[二][壘][後][方][小][飛][球]",x)]="中"
direction[grep("[一][壘][後][方][小][飛][球]",x)]="右"
direction[grep("[一][二][壘][間][穿][越]",x)]="右"
direction[grep("[二][三][壘][間][穿][越]",x)]="左"
direction[grep("[右][邊][方][向][穿][越]",x)]="右"
direction[grep("[左][邊][方][向][穿][越]",x)]="右"
direction[grep("[投][手][反][彈][球]",x)]="內"
direction[grep("[三][壘][方][向][平][飛][球]",x)]="內"
direction[grep("[二][壘][方][向][平][飛][球]",x)]="內"
direction[grep("[一][壘][方][向][平][飛][球]",x)]="內"
direction[grep("[三][壘][手][方][向][平][飛][球]",x)]="內"
direction[grep("[二][壘][手][方][向][平][飛][球]",x)]="內"
direction[grep("[一][壘][手][方][向][平][飛][球]",x)]="內"
direction[grep("[遊][擊][方][向][平][飛][球]",x)]="內"
direction[grep("[遊][擊][手][方][向][平][飛][球]",x)]="內"
direction[grep("[強][襲][球]",x)]="內"
direction[grep("[一][壘][上][空][飛][球]",x)]="內"
direction[grep("[二][壘][上][空][飛][球]",x)]="內"
direction[grep("[三][壘][上][空][飛][球]",x)]="內"

xxx=substr(x,regexpr("[:]", x),regexpr("[:]", x)+100)
direction[grep("[L][F]",xxx)]="左"
direction[grep("[C][F]",xxx)]="中"
direction[grep("[R][F]",xxx)]="右"
direction[grep("[投][手][正][前][方]",xxx)]="內"




return(direction)

}
