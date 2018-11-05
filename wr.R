# Mikołaj Szałkowski                                                                                                                                        hmm
# idk czy dobrze zrozumiałem zadanie lmao
# voilà I guess *shrug*
# coś krótkie

random1To1000 <- floor(runif(1000, min=1, max=1000))
from1To100    <- 0
from101To500  <- 0
from501To1000 <- 0

for(i in 1:1000)
{
  if(random1To1000[i] < 101){
    from1To100=from1To100+1
  }
  else if(random1To1000[i] < 501) {
    from101To500=from101To500+1
  }
  else from501To1000=from501To1000+1
}

vect <- c(from1To100,from101To500,from501To1000)
barplot(vect, names.arg=c("1...100", "101...500", "501...1000"), main="Częstotliwość występowania", col=c("darkred","darkblue","darkgreen"))
