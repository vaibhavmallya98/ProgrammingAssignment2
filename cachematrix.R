## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
mat_inv<-NULL
mat_set<-function(p) 
{
  x<<-p
  mat_inv<<-NULL
}
 
mat_get<-function()x                              
inv_set<-function(inverse) mat_inv<<-inverse  
inv_get<-function() mat_inv                    
list(mat_set=mat_set,mat_get=mat_get,inv_set=inv_set,inv_get=inv_get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
## Return a matrix that is the inverse of 'x'
mat_inv<-x$inv_get()
if(!is.null(mat_inv)) {                       
message("Fetching cached inverse of a matrix")   
return(mat_inv)                             
}

        
mat<-x$mat_get()                     
mat_inv<-solve(mat, ...)             
x$inv_set(mat_inv)                         
return(mat_inv)                               
}
