#include <iostream>
using namespace std;

class CA {
public:
    int a = 1;
};

class CB {
public:
    virtual void FuncB() {}
    int a = 2;
};

class CC : public CB {
public:
    void FuncB() override {}
    virtual void FuncC() {}
};

int main() {
    CA a;
    CB b;
    CC c;
    cout << "Size of Pointer : " << sizeof(void *) << endl;
    cout << "Size of CA : " << sizeof(a) << endl;
    cout << "Size of CB : " << sizeof(b) << endl;
    cout << "Size of CC : " << sizeof(c) << endl;
    return 0;
}