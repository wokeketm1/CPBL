#http://docs.ggplot2.org/current/facet_grid.html
#http://datasciphm.blogspot.tw/2015/07/ggplot2.html
library(ggplot)

#+geom_point()  點
#+geom_line()   線
#+geom_smooth() 趨勢
#+geom_smooth(method='lm') LR趨勢

score<-matrix$rating%>%sqrt()%>%sqrt()
ggplot(matrix, aes(x = numforgame, y = score))+geom_smooth()




#Generate the data
df <- data.frame(gp = factor(rep(letters[1:3], each = 10)),y = rnorm(30))
#Set Aesthetic attributes and assign Geometric objects
ggplot(df, aes(x = gp, y = y)) +geom_point()
#Box plot
ggplot(df, aes(x = gp, y = y)) +geom_boxplot()
#add panel
df$z<-df$y+rnorm(30)
ggplot(df, aes(x = z, y = y)) +geom_point()+facet_grid(gp~.)
#different way to add panel
ggplot(df, aes(x = z, y = y)) +geom_point()+facet_grid(.~gp)
#add line and smooth it
ggplot(df, aes(x = z, y = y)) +geom_point()+facet_grid(gp~.)+geom_smooth()
#add line based on linear regression method and smooth it
ggplot(df, aes(x = z, y = y)) +geom_point()+facet_grid(gp~.)+geom_smooth(method='lm')
#Draw line plot
ggplot(df, aes(x = z, y = y)) +geom_line()+facet_grid(gp~.)
#add color based on assigned variable 
ggplot(df, aes(x = z, y = y, color=gp)) +geom_line()