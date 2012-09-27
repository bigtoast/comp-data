
getmonitor <- function(id, directory, summarize = FALSE) {
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  ## Your code here
  if ( nchar(id) == 1 ) {
    id <- paste("00", id, sep="")
  } else if ( nchar(id) == 2 ){
    id <- paste("0", id, sep="")
  } 
  
  fileName <- paste(directory, "/", id, ".csv", sep = "")
  specData <- read.csv( fileName )
  
  if ( summarize ) {
    print( summary( specData ) )
  } 
    
  return(specData)
}