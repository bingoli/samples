#include <iostream>

#include "a/a.h"
#include "b/b.h"

using namespace std;

int main() {
    cout << endl;
    cout << "---------a.lib Start---------" << endl;
    PrintA();
    cout << "---------a.lib End  ---------" << endl;
    cout << endl;
    cout << "---------b.lib Start---------" << endl;
    PrintB();
    cout << "---------b.lib End  ---------" << endl;
    cout << endl;
}