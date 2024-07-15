# R Program to Calculate Inverse of a Matrix, and save inside the Object Cache: with Custom Object Structure
### Key Features:
- Calculate Inverse of a Matrix
- Save the inverse of the Matrix in the form of a cache; inside the Object itself
- Saves computational cost due to recalculation of Inverse; since it is saved inside cache
- Useful when contents of a matrix are not changing

# How to Use:
- Create Matrix using 'cacheMatrix()' function
- Fill the matrix by using the 'set()' function
- calculate the inverse using 'cacheSolve()' function
- To extract Actual matrix, use 'get()' function
- To extract Inverse, use 'getInverse()' function

# Note:
- To reference/call the function of the object, use '$'
  i.e. matrixObject$set()
