## project management

1. set up management structure (i.e., "data", "src", "results", "doc")
2. discuss avoiding redundancies of files 
3. make sure to use version control (i.e., Git)

## getting help 
```{r}
?plot
```

```{r}
? "<-"
```


```{r}
vignette("FAQ-vegan")
```


```{r}
citation("vegan")
```

## data and their formats 
```{r}
cats <- data.frame(coat=c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.3, 3.2),
                   likes_string = c(1, 0, 1))
```

```{r}
cats
```
```{r}
getwd()
```

```{r}
write.csv(cats, file = "./cats.csv")
```

```{r}
cats <- read.csv("./data/cats.csv")
```

```{r}
cats$weight
```


```{r}
cats$weight*10
```


```{r}
log(cats$weight)
logweight <- log(cats$weight)
cbind(cats, logweight)
```
```{r}
cats_log<- cbind(cats$logweight)
cats_log
```
```{r}
paste("my cat is", cats$coat, ", and it weighs", cats$weight, "kg.", sep=)
```
### data types 
```{r}
typeof(cats$coat)
```

```{r}
typeof(cats$likes_string)
```
```{r}
typeof(cats$weight)
```


```{r}
typeof(T)
typeof(F)
```
```{r}
file.show(./data/cats.csv)
```

```{r}
cats$likes_string <- as.logical(cats$likes_string)
typeof(cats$likes_string)
print(cats$likes_string)
```

```{r}
c("a", "b")
ab <- c("a", "b")
print(ab)
```
```{r}
c(ab, "c")
```
```{r}
c(ab, ab)
```
```{r}
1:10
```
```{r}
seq(10)
```
```{r}
z <- seq(10)
head(z, n=3)
```
```{r}
length(z)
class(z)
typeof(z)

```
```{r}
seq(1,100, by=5)
```
### data frames
```{r}
coats <- c("tabby","tortoiseshell","tortoiseshell","black","tabby")
print(coats)
```
```{r}
factor(coats)
```
```{r}
categories <- factor(coats)
class(coats)
class(categories)
```
```{r}
str(categories)
```

### lists
```{r}
list_example <- list(title="numbers", numbers= 1:10, TRUE)
list_example
```
```{r}
another_list <- list(1, "a", TRUE, 1+1i)
another_list
```

```{r}
typeof(cats)
typeof(list_example)

class(cats)
class(list_example)
```
```{r}
data.frame(list_example)
```
```{r}
cats[,3]
cats[3,]
```
```{r}
cats[2:3,c(1,3)]
```





