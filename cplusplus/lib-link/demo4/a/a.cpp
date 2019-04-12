#include "a.h"
#include <iostream>
using namespace std;

class CPrint {
public:
   void Print() {
       cout << "a.lib CPrint::Print()" << endl;
       // Crash();
   }

   void PrintA() {
       cout << "a.lib CPrint::PrintA()" << endl;
   }

   void Crash() {
       a = 100;
   }
private:
   int a = 0;
};

void CA::Print() {
    cout << "a.lib CA::Print()" << endl;
    CPrint print;
    print.PrintA();
    print.Print();
}
