library(combinat)
letters[1:4]
#[1] "a" "b" "c" "d"

combn(letters[1:4], 2)
combn(10, 5, min) # minimum value in each combination
# Different way of encoding points:
combn(c(1,1,1,1,2,2,2,3,3,4), 3, tabulate, nbins = 4)
#Compute support points and (scaled) probabilities for a
#Multivariate-Hypergeometric(n = 3, N = c(4,3,2,1)) p.f.:
# table.mat(t(combn(c(1,1,1,1,2,2,2,3,3,4), 3, tabulate,nbins=4)))


#ÀH¾÷±Æ¦C
gtools::permute(unlist(x2))