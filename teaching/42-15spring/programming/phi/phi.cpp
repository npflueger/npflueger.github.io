#include <iostream>
#include <cstdio>

using namespace std;

long long phi(long long n) {
	if (n == 1) return 1;
	
	//Initialize result to 1
	//It will grow each time a prime factor of n is found
	long long result = 1;

	//Try possible prime factors of n
	//Stop if you're trying something bigger than sqrt(n)
	for (long long p=2; p*p <= n; p++) {
		if (n % p == 0) {
			//Compute q, the largest power of p dividing n
			long long q = p;
			while ((n/q)%p == 0) q *= p;
			result *= (q - q/p);

			//Remove factors of p from n
			n /= q;
		}
	}

	//If n>1, then it itself is prime
	if (n > 1) result *= (n-1);

	return result;
}

int main() {
	//Read the number of cases
	int T; cin >> T;

	//Read each case and print the result
	for (int t=1; t<=T; t++) {
		long long n; cin >> n;
		printf("Case #%d: %lld\n",t,phi(n));
	}
}
