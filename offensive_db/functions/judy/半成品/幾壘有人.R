Base1=character(length(x))
Base2=character(length(x))
Base3=character(length(x))
Base1[grep("[上][到][一][壘]",x)]="1"
Base1[grep("[一][壘][有][人]",x)]="1"

Base2[grep("[上][到][二][壘]",x)]="1"
Base2[grep("[二][壘][有][人]",x)]="1"

Base3[grep("[上][到][三][壘]",x)]="1"
Base3[grep("[三][壘][有][人]",x)]="1"



