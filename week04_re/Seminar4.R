library(openxlsx)
setwd("C:/Users/Дима/Desktop/доп/проект")
df <- read.xlsx('changed_names.xlsx')





grep("a+", c("abc", "def", "cba a", "aa"),  value=FALSE)
grep("a+", c("abc", "def", "cba a", "aa"),  value=TRUE)

grepl("a+", c("abc", "def", "cba a", "aa"))




#Каждый элемент в возвращаемом векторе указывает положение символа в 
#каждом соответствующем строковом элементе входного вектора, в котором
#было найдено (первое) совпадение с регулярным выражением.
regexpr("a+", c("abc", "def", "cba a", "aa"))



#Ищет все совпадения с re
gregexpr("a+", c("abc", "def", "cba a", "aa"), perl=TRUE)



x <- c("abc", "def", "cba a", "aa")
m <- regexpr("a+", x, perl=TRUE)

regmatches(x, m)



m <- gregexpr("a+", x, perl=TRUE)
regmatches(x, m)



sub("(a+)", "z\\1z", c("abc", "def", "cba a", "aa"), perl=TRUE)
sub("(a+)", "", c("abc", "def", "cba a", "aa"), perl=TRUE)






library(stringi)
stri_extract_first_regex(c("Pic 26+25", "Pic 1,2,3", "no pics"), "[0-9]")



df$Money_month
stri_extract_first_regex(df$Money_month, "[0-9]+")
