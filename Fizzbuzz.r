a = 1:100
for(i in a) {
  x <- if (i%%15 == 0) "fizzbuzz" else
       if (i%%3 == 0) "fizz" else 
       if (i%%5 == 0) "buzz" else 
       i
  a[i] <- x
}
c = c(sum(a=="fizz"), sum(a=="buzz"), sum(a=="fizzbuzz"))
pie(c, labels=c("Fizz", "Buzz", "Fizzbuzz"), radius=1, col=c("darkorchid", "chartreuse", "cyan"))