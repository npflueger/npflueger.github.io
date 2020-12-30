/* enumsg.cpp
 * Written by Nathan Pflueger, August 2016.
 *
 * This program enumerates all numerical semigroups up to a specified genus, by a depth-first search
 * of the semigroup tree (see e.g. Bras-Amoros and Bulyagin: "Towards a better understanding of the
 * semigroup tree"). It makes a list of all semigroups achieving the maximum effective weight (see
 * my paper "On non-primitive Weierstrass points").
 *
 * NOTE: The maximum permitted genus is specified at compile-time with the constant MAXG. This must
 * be set to a larger value if enumeration to higher genus is needed.
 */

#include <stdio.h>
#include <assert.h>
#include <vector>
#include <ctime>

// Maximum size of a semigroup
// Set at compile time so that all Semigroups require no dynamic memory;
// 	this seems to increase efficiency considerably.
const int MAXG = 50;

struct Semigroup {
	int genus;
	int genc; // Number of generators
	int gen[MAXG+1]; // Generators, in increasing order
	int fixedgens; // Number of generators below the largest  gap
	int gap[MAXG]; // Gaps, in increasing order
	int ew; // Effective weight


	int childc() {  // Number of children in the semigroup tree
		return genc-fixedgens;
	}

	// Contructor for the root (genus 0) semigroup
	Semigroup() {
		genus = 0;
		genc = 1;
		fixedgens = 0;
		gen[0] = 1;
		ew = 0;
	}

	// Constructor for the (ch)th child of a given semigroup
	Semigroup(Semigroup *par, int ch) {
		assert(ch < par->childc());
		
		// Can immediately set all members besides gen
		genus = par->genus + 1;
		for (int j=0; j<genus-1; j++) 
			gap[j] = par->gap[j];
		gap[genus-1] = par->gen[par->fixedgens + ch];
		fixedgens = par->fixedgens + ch;
		ew = par->ew + (par->fixedgens + ch);
		
		// The weight 0 semigroup is a special case
		if (ch==0 && par->fixedgens==0) { 
			genc = par->genc + 1;
			for (int j=0; j<genc; j++) 
				gen[j] = genus+1+j;
		} else {
			// The generators of the child are either all of the parent's generators
			// except the removed element, or those plus the following number
			int newgen = gap[genus-1] + par->gen[0];
			// This is a generator of the child iff newgen - gen[i] is a nongap for some i>0.
			// Check whether this is the case:
			int j = genus-1;
			bool issum = false;
			for (int i=1; i<par->fixedgens+ch && 2*par->gen[i] <= newgen; i++) {
				while (j >= 0 && gap[j] > newgen - par->gen[i]) j--;
				if (j == -1 || gap[j] < newgen - par->gen[i]) {
					issum = true;
					break;
				}
			}
			
			genc = (issum)? par->genc-1 : par->genc;
			for (int i=0; i<par->fixedgens + ch; i++) 
				gen[i] = par->gen[i];
			for (int i=par->fixedgens + ch + 1; i<par->genc; i++) 
				gen[i-1] = par->gen[i];
			if (!issum) 
				gen[genc-1] = newgen;
		}

	}
	
	// Print a description of this semigroup to standard output
	void describe() {
		printf("Gaps:");
		for (int i=0; i<genus; i++) printf(" %d",gap[i]);
		printf("\tGenerators: <");
		int i=0;
		while (i < genc) {
			// Identify longest streak of consecutive generators starting at gen[i]
			int j=i+1;
			while (j < genc && gen[j] == gen[j-1]+1) j++;
			if (i>0) printf(",");
			printf("%d",gen[i]);
			if (j-i >= 3) printf("..%d",gen[j-1]);
			if (j-i == 2) printf(",%d",gen[j-1]);
			i = j;
		}
		printf(">\n");
	}
};

// Depth-first search through semigroup tree, starting at cur, stopping at genus g
// Updates the maximum effective weight in each genus with equality cases
// Updates cnt[i] by the number of genus i semigroups in this subtree
void list(Semigroup &cur, int g, std::vector<std::vector<Semigroup> > &argmax, std::vector<long long> &cnt) {
	if (argmax[cur.genus].size() > 0 && cur.ew > argmax[cur.genus][0].ew)
		argmax[cur.genus].clear();
	if (argmax[cur.genus].size() == 0 || cur.ew == argmax[cur.genus][0].ew)
		argmax[cur.genus].push_back(cur);
	cnt[cur.genus]++;

	if (cur.genus < g) {
		for (int i=0; i<cur.childc(); i++) {
			Semigroup nxt(&cur,i);
			list(nxt,g,argmax,cnt);
		}
	}
}

int main(int argc, char **argv) {
	clock_t clock0 = clock();
	int g;
	printf("Enter the largest genus to enumerate: ");
	scanf("%d",&g);
	assert(g <= MAXG);

	// Vector for each genus, storing those semigroups maximizing the effective weight
	std::vector<std::vector<Semigroup> > argmax(g+1);
	// Count of the number of semigroups in each genus
	std::vector<long long> cnt(g+1);
	
	// Perform DFS to set argmax
	Semigroup root;
	list(root,g,argmax,cnt);
	
	// Show description of semigroups maximizing effective weight in each genus
	for (int i=1; i<=g; i++) {
		printf("Genus %d: %lld semigroups total, max ew. is %d.\n",i,cnt[i],argmax[i][0].ew);
		for (int j=0; j<argmax[i].size(); j++) {
			argmax[i][j].describe();
		}
		printf("\n");
	}
	clock_t clock1 = clock();
	printf("Enumeration completed in %d seconds.\n",(int)( (clock1-clock0) / CLOCKS_PER_SEC));

}
