#include "a.h"
#include <iostream>
using namespace std;

void Print() {
    cout << "a.lib Print()" << endl;
}

void PrintA() {
    cout << "a.lib PrintA()" << endl;
    Print();
}
