#include <iostream>
#include <cstdlib>

using namespace std;
typedef long long ll;

//Euclidean algorithm for GCD
int gcd(int a,int b) {
	if (b == 0) return a;
	else return gcd(b,a%b);
}

//Naive implementation of phi function: try all numbers up to n
//and check if they are coprime using the Euclidean algorithm.
int phi(int n) {
	int count = 0;
	for (int m=1; m<=n; m++) {
		if (gcd(m,n) == 1) count++;
	}
	return count;
}

int main() {
	//Read the number of test cases
	int T; cin >> T;

	//Print the answer to each test case
	for (int t=1; t<=T; t++) {
		int n; cin >> n;
		printf("Case #%d: %d\n",t,phi(n));
	}
}
