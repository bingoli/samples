#include "b.h"

#include <iostream>
using namespace std;

void Print() {
    cout << "b.lib : Print()" << endl;
}
void CB::PrintB() {
    cout << "CB::PrintB()" << endl;
    Print();
}