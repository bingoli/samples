#include "a.h"

#include <iostream>
using namespace std;

void Print();
void Print2() {
    cout << "a.lib : Print()" << endl;
}
void CA::PrintA() {
    cout << "CA::PrintA()" << endl;
    Print();
}