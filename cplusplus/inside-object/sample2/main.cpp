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
    // 空间占用
    cout << "sizeof CA : " << sizeof(CA) << endl;
    cout << "sizeof CB : " << sizeof(CB) << endl;
    cout << "sizeof CC : " << sizeof(CC) << endl;

    // 正确的向上类型转换
    CC* pc = new CC();
    CA* pa = pc;
    CB* pb = pc;

    // 正确的向下转换
    CC* pc1 = (CC*)pa;
    CC* pc2 = (CC*)pb;

    // 错误的转换
    CA* pa1 = (CA*)pb;
    CB* pb1 = (CB*)pa;
    CB* pb2 = reinterpret_cast<CB*>(pc);

    delete pc;
    
    return 0;
}
