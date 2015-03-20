makeCacheMatrix <- function(x = matrix()) {   		#Define functino name and argument
        inv <- NULL						                    #set the variable inv to Null
									                                #Define different functions 
        set <- function(y) {					            #set--> assign a matrix
                x <<- y
                inv <<- NULL
        }
        get <- function() x					              #recall the argument x
	  setinv<-function(solve) inv<<-solve		        #Define the funcion solve and assign the inverse to the variable inv
        getinv <- function() inv				          #get the inv variable through getinv function
        list(set = set, get = get,setinv=setinv,	#list of functions available in makeCacheMatrix 
             getinv= getinv)

}
