cacheSolve<- function(x=matrix(),...) {             #Define functino name and argument
  inv <- x$getinv()                                 #assign the inverse of the matrix from MakeCacheMatrix to inv variable
  if(!is.null(inv)) {                               #If inv variable is not NULL-->
    message("getting cached data")                  #Display the message that the results comes from the cache
    return(inv)                                     #and display it
  }
  data <- x$get()                                   #if ivn is NULL -->create an ne variable inside the environment of the function cacheSolve
                                                    #and assign the matrix to it
  inv <- solve(data)                                #solve() == inverse this matrix and store this results in inv
  x$setinv(inv)                                     #use the setinv function from MakeCacheMatrix to store the solved matrix to inv 
  inv                                               #retur inv
}
