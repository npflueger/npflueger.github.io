import sys

#Efficient implementation of phi(n)
#Remove prime factors from n one-by-one
def phi(n):
	result = 1
	p = 2
	while (n > 1):
		#Find the next prime factor of n, trying numbers starting at p
		while (n%p != 0):
			if (p*p < n):
				p += 1
			else: 
				#If nothing up to sqrt(n) divides n, then n itself is prime
			 	p = n
		#Find the largest power of p dividing n, remove it
		q = 1
		while (n%p == 0):
			n /= p
			q *= p
		result *= (q - q/p)
	return result

T = int(sys.stdin.readline())

for t in range(1,T+1):
	n = int(sys.stdin.readline())
	print "Case #%d: %d" % (t,phi(n))
