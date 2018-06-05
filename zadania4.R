#zad 4-1
library(tidyverse)
mpg
?mpg

#1
zmienne: 11
#2
obserwacje:234
#3
engine displacement oznacza pojemność silnika
miles per gallon oznacza mile na gallon (jednostka objętości, która się równa 4.55 litra)
#4
manufacturer: producent
model: model samochodu
displ: pojemność silnika w litrach
year: rok produkcji
cyl: liczba cylindrów
trans: rodzaj skrzyni biegów
drv: rodzaj napędu
cty: spalanie po mieście
hwy: spalanie na trasie (autostrada)
fl: typ paliwa
class: typ samochodu




#zad 4-2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty),
             position = "jitter")




#zad 4-3
ggplot(data = mpg) +
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "Ilość samochodów w poszczególnych klasach", x = "poszczególna klasa", y = "ilość samochodów")




#zad 4-4
ggplot(data = mpg) +
  geom_histogram(mapping  = aes(displ), bins = 10) +
  labs(title = "Ilość samochodów w poszczególnych klasach", x = "poszczególna klasa", y = "ilość samochodów")



#zad 4-5
ggplot(data = mpg, aes(x = class, y = displ)) +
  geom_boxplot() +
  coord_flip() +
  labs(title = "Ilość samochodów w poszczególnych klasach", x = "poszczególna klasa", y = "ilość samochodów")
