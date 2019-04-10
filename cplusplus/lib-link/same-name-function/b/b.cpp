#include "b.h"

#include <iostream>
using namespace std;

class CPrint {
public:
    void Print() {
        cout << "b.lib CPrint::Print" << endl;
    }

    void PrintB() {
        cout << "b.lib CPrint::PrintB" << endl;
    }
};

/*
extern "C" void Print() {
    cout << "b.lib Print()" << endl;
}
*/

void CB::Print() {
    cout << "b.lib CB::Print()" << endl;
    CPrint print;
    print.PrintB();
    print.Print();
}