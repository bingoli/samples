#include <iostream>

#include "a/a.h"
#include "b/b.h"

using namespace std;

int main() {
    cout << endl;
    cout << "---------a.lib Start---------" << endl;
    CA a;
    a.Print();
    cout << "---------a.lib End  ---------" << endl;
    cout << endl;
    cout << "---------b.lib Start---------" << endl;
    CB b;
    b.Print();
    cout << "---------b.lib End  ---------" << endl;
    cout << endl;
}