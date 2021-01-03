#include <iostream>
using namespace std;

int sum1(int n);
int fib1(int n);

const int N = 4000000;

int sum1(int n) {
	int sum = 0; 
	while (fib1(n) < N) {
		if (fib1(n) % 2 == 0) {
			sum += fib1(n);
		}
		++n;
	}
	return sum;
}

int fib1(int n) {

	int j = 0; 
	int k = 1; 
	int d = 0; 
	int i = 1; 
	while (i < n || i == n) {

		d = j + k;
		j = k;
		k = d;
		i++;
	}
	return k;
}

int main() {
  int i = 2;
	cout << sum1(i);
	return 0;
}
