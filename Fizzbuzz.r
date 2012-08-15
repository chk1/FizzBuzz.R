a = 1:100
for(i in a) {
  x <- if (i%%15 == 0) "FizzBuzz" else
       if (i%%3 == 0) "Fizz" else 
       if (i%%5 == 0) "Buzz" else 
       i
  a[i] <- x
}
c = c(sum(a=="Fizz"), sum(a=="Buzz"), sum(a=="FizzBuzz"))
pie(c, labels=c("Fizz", "Buzz", "Fizzbuzz"), radius=1, col=c("darkorchid", "chartreuse", "cyan"))