#include <iostream>
using namespace std;

class CA {
public:
    void Fun1() {}
    void Fun2() {}
    void Fun3() {}
    void Fun4() {}
    int a = 1;
};

class CB {
public:
    virtual void Fun1() {}
    virtual void Fun2() {}
    void Fun3() {}
    void Fun4() {}
    int b = 2;
};

int main() {
    CA* pa = new CA();
    pa->Fun1();
    pa->Fun2();
    pa->Fun3();
    pa->Fun4();

    CB* pb = new CB();
    pb->Fun1();
    pb->Fun2();
    pb->Fun3();
    pb->Fun4();

    cout << "Size of Pointer : " << sizeof(void *) << endl;
    cout << "Size of CA : " << sizeof(*pa) << endl;
    cout << "Size of CB : " << sizeof(*pb) << endl;

    delete pa;
    pa = nullptr;
    delete pb;
    pb = nullptr;
    return 0;
}
