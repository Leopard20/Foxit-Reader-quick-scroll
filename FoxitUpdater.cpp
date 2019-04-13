#include <iostream>
#include <windows.h>

int main() {
    FreeConsole();
    ShellExecute(NULL, "open", "C:\\PDF.ahk", NULL, NULL, 0);
}
