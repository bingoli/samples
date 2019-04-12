#include "a.h"
#include <iostream>
using namespace std;

class CPrint {
public:
   void Print() {
       cout << "a.lib CPrint::Print()" << endl;
   }

   void PrintA() {
       cout << "a.lib CPrint::PrintA()" << endl;
   }
};

void CA::Print() {
    cout << "a.lib CA::Print()" << endl;
    CPrint print;
    print.PrintA();
    print.Print();
}
