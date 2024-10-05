# Aqui voy a empezar mi codigo

# Vector

a1 <- c(1,2,3) 
a1

# Matrices
mtx <- matrix(c(1:10), nrow = 5, ncol = 2)
mtx
mtx[3,2]

# Data frame
df <- data.frame(mtx)
colnames(df) <- c("col1", "col2")
rownames(df) <- c("j1", "j2", "j3", "j4", "j5")
df

df[c("j5", "j3"), c("col2", "col1")]
df$col1

# Valores logicos
1 == 2
df$col1 == 3

df[df$col1 == 3, ]

1 >= 3
1 <= 3
1 > 3

summary(df)

df[df$col2 >= 8, ]

# Listas

lst <- list(df, mtx, a1)

a <- lst[[1]]

install.packages("ggplot2")
library(ggplot2)
install.packages("readxl")
library(readxl)

df <- readxl::read_xlsx("../Lorea_Anasagasti/data/BASE_IVA.xlsx")

df <- df[-c(1:5), c(8,10,17,9)]

summary(df)

df$Tiempo_evolución <- as.numeric(df$Tiempo_evolución)
summary(df)

1 != 1

df_limpio <- df[!is.na(df$Tiempo_evolución), ]
summary(df_limpio)

install.packages("tidyverse")

library(dplyr)

df_limpio %>% select(Tiempo_evolución) %>% 
  filter(Ojo_afectado > 1.38) %>% 
  group_by()


plot(df_limpio$Tiempo_evolución, df_limpio$Ojo_afectado)

ggplot(df_limpio, aes(x = Tiempo_evolución, fill = Tiempo_evolución)) +
  geom_density() +
  geom_histogram()+
  theme_bw() +
  theme(text = element_text(size = 20)) 





