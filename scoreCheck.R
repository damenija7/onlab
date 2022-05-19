library(bnlearn)

data(asia)

str(asia)

str(attributes(asia)$names)

e = empty.graph(attributes(asia)$names)

arc.set = matrix(c("A","X","E","B","X","L","B","L","E","S","L","D","S","T","L","T"),
                 ncol = 2, byrow = TRUE, dimnames = list(NULL, c("from","to")))
arcs(e) = arc.set

graphviz.plot(e)


bicScore = score(e, asia, type='bic')
bdeScore = score(e, asia, type='bde', iss = 1.0)
paste0("BICSCore: ", bicScore)
paste0("BDEScore:", bdeScore)
