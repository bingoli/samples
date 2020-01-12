#include <iostream>

using namespace std;

class CBase {
public:
    CBase() {
        cout << "CBase::CBase" << endl;
        Init();
    }

    virtual ~CBase() {
        Uninit();
        cout << "CBase::~CBase" << endl;
    };

    virtual void Init() {
        cout << "CBase::Init" << endl;
    }

    virtual void Uninit() {
        cout << "CBase::Uninit" << endl;
    }

    int base_value = 0x1234;
};

class CDerived : public CBase {
public:
    CDerived() {
        cout << "CDerived::CDerived" << endl;
    }

    virtual ~CDerived() {
        cout << "CDerived::~CDerived" << endl;
    }

    virtual void Init() {
        cout << "CDerived::Init" << endl;
    }

    virtual void Uninit() {
        cout << "CDerived::Uninit" << endl;
    }

    int derived_value = 0x5678;
};

int main() {
    CDerived* derived = new CDerived();
    delete derived;
    derived = nullptr;
    return 0;
}