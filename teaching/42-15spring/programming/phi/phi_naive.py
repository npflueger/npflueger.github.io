import sys

#The Euclidean algorithm for GCD
def gcd(a,b):
	if b == 0:
		return a
	return gcd(b,a%b)

#Read the number of test cases
T = int(sys.stdin.readline())

#Compute and print the answer to each test case
for t in range(1,T+1):
	n = int(sys.stdin.readline())
	count = 0
	#Try every number 1 to n to see if it is coprime
	for m in range(1,n+1):
		if (gcd(n,m) == 1):
			count += 1
	print "Case #%d: %d" % (t, count)

