
#x <- 1:10
#if(x > 5) {
#  x <- 0
#}

# split dataframe by month. take column means
s <- split( airquality, airquality$Month )
lapply( s, function( x) colMeans(x[,c("Ozone", "Solar.R", "Wind")]))

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

#print( f( 3) )

#z <- 10

print( f(3) )