#include <iostream>
#include <windows.h>

void OpenThreadFun() {
    HANDLE handle = ::OpenThread(THREAD_ALL_ACCESS, TRUE, ::GetCurrentThreadId());

    ::Sleep(1000);
    // ::CloseHandle(handle);
}

int main() {
    while(1) {
        OpenThreadFun();
    }
}
