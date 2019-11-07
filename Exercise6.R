# Mariana Suarez and Jake Fry 
# Biocomp Assignemnt 6

#Read csv file
df <- read.csv(file="iris.csv")

#Head
n = 5 #number of lines to display
head(df,n)

#Last 2 rows in the last 2 columns
df[(nrow(df)-1):nrow(df),(ncol(df)-1):ncol(df)]

#Number of observances of each species
species <- unique(df$Species)
for (spec in species)
{
  cat(spec, ":", nrow(df[df$Species==spec,]) , '\n')
}

#Rows with sepal width > 3.5
df[which(df$Sepal.Width>3.5),]

#Write all information for setosa species into a new file
setosa <- df[which(df$Species == "setosa"),]
write.table(x = setosa, file ="setosaa.csv", sep = ",", row.names = FALSE)

#Mean, min, max petal length for species virginica
virginica <- df[which(df$Species == "virginica"),]
min(virginica$Petal.Length) 
max(virginica$Petal.Length)
mean(virginica$Petal.Length)









