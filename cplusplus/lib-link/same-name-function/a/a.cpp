#include "a.h"

#include <iostream>
using namespace std;

class CPrint {
public:
    void PrintA() {
        cout << "a.lib CPrint::PrintA" << endl;
    }

    void Print() {
        cout << "a.lib CPrint::Print" << endl;
    }
};

extern "C" void Print() {
    cout << "a.lib Print()" << endl;
}

void CA::Print() {
    cout << "a.lib CA::Print()" << endl;
    CPrint print;
    print.PrintA();
    print.Print();
}
