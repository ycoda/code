#include <stdio.h>
#include <string.h>
#include <iostream>
using namespace std;


int main(void) {
    for (int row = 1; row <= 5; row++) {
        for (int hashnum = 1; hashnum <= 6 - row; hashnum++) {
            cout << "#";
        }
        cout << endl;
    }
}