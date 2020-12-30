def reduce(M):
    rows = len(M)
    cols = len(M[0])
    rowsWithPivot = 0
    for pivCol in xrange(cols):
        # Some rows have pivots set already.
        # Find the first row below those with a nonzero entry in this column.
        pivRow = rowsWithPivot
        while pivRow < rows and M[pivRow][pivCol] == 0:
            pivRow += 1
        # if pivRow == rows, that means there is no such row; skip this column.
        if pivRow == rows:
            continue
        # Otherwise, move the row in question up to the top slot, then start cancelling.
        swap(M,pivRow,rowsWithPivot)
        pivRow = rowsWithPivot
        cancelColumn(M,pivRow,pivCol)
        rowsWithPivot += 1

# Swap rows i1 and i2
def swap(M,i1,i2):
    if i1 == i2: return # Nothing to do
    print 'R%d <-> R%d'%(i1+1,i2+1)
    for j in xrange(len(M[0])):
        tmp = M[i1][j]
        M[i1][j] = M[i2][j]
        M[i2][j] = tmp

# Scale row i by a factor c
def scale(M,i,c):
    if c == 1: return # Nothing to do
    print 'R%d *= %.2f'%(i+1,c)
    for j in xrange(len(M[0])):
        M[i][j] *= c

# Add c times row i1 to row i2
def addMult(M,i1,i2,c):
    if c == 0: return # Nothing to do
    print 'R%d += %.2fR%d'%(i2+1,c,i1+1)
    for j in xrange(len(M[0])):
        M[i2][j] += c*M[i1][j]

# Turn the specified entry into a pivot, cancel entries above and below it
def cancelColumn(M,pivRow,pivCol):
    scale(M,pivRow,1./M[pivRow][pivCol])
    for i in xrange(len(M)):
        if i == pivRow:
            continue
        addMult(M,pivRow,i,-M[i][pivCol])


# Reads a matrix as a sequence of space-separated lists
# The end of the matrix is indicated by a blank line
def readMatrix():
    M = []
    while True:
        line = map(float,raw_input().split())
        if (len(line)) == 0: break
        M += [line]
        if (len(line) != len(M[0])):
            print 'All rows of a matrix must have the same length.'
            return None
    return M

# Shows matrix; all entries to two decimal places
def showMatrix(M):
    for row in M:
        print ' '.join(['%8.2f'%entry for entry in row])

M = readMatrix()
reduce(M)
showMatrix(M)
