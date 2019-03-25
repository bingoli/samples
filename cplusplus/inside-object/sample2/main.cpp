#include <iostream>
using namespace std;

class CA {
public:
    virtual void FunA() {}
    int a = 1; 
};

class CB {
public:
    virtual void FunB() {}
    int b = 2;
};

class CC : public CA, public CB {
public:
    virtual void FunC() {}
    int c = 3;
};

int main() {
    cout << "sizeof CA : " << sizeof(CA) << endl;
    cout << "sizeof CB : " << sizeof (CB) << endl;
    cout << "sizeof CC : " << sizeof(CC) << endl;

    CC* pc = new CC();
    CA* pa = pc;
    CB* pb = pc;
    
    return 0;
}
