## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function is similiar to the makeVector function provided as an example in 
#this assigment.The function structure  and commads are simliar. I basically 
#changed the setmean to setinvmartix.
# the inverse of the function 

makeCacheMatrix <- function(x = matrix()) 
{
  m <- NULL
  set <- function(y)
  { 
    x <<- y 
    m <<- NULL 
  } 
  get <- function() x 
  setinvmatrix <- function(invmatrix) m <<- invmatrix
  getinvmatrix <- function() m 
  list(set=set, get = get, setinvmatrix = setinvmatrix, getinvmatrix = getinvmatrix) 
} 


## Write a short comment describing this function
# This function is similiar to the cachemean function provided as an example in 
#this assigment.The function structure  and commads are similar. I basically 
#changed the function to include the solve function. 
# the inverse of the function 



cacheSolve <- function(x, ...) 
        ## Return a matrix that is the inverse of 'x'
  
{

  m <- x$getinvmatrix() 
  if(!is.null(inv)) 
  { 
    message("getting cached data.") 
    return(m) 
  } 
  data <- x$get() 
  m <- solve(data) 
  x$setinverse(m) 
  m
}
