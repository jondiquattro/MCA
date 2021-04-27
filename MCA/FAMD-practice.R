install.packages(c("FactoMineR", "factoextra"))
library("FactoMineR")
library("factoextra")

df1 <-data[-c(1,2,21)]


res.famd <- FAMD(df1, graph = FALSE)

eig.val <- get_eigenvalue(res.famd)

# Qualitative variables
fviz_famd_var(res.famd, "quali.var", col.var = "black", 
              selectMod="contrib 10")


#shows the eigen values
head(eig.val)

# scree plot
fviz_screeplot(res.famd)


#all variables
fviz_famd_var(res.famd, repel = TRUE)



# Quantitative variables
fviz_famd_var(res.famd, "quanti.var", repel = TRUE, col.var = "black")

fviz_famd_var(res.famd, "quali.var", col.var = "contrib", 
              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07")
)