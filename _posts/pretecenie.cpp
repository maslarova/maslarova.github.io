#include <iostream>
using namespace std;

int main() {
    int a, b, c; // vyskusajte i unsigned variantu uint
    cout << "Celociselne pretecenie a+b" << endl;
    
    a = 0; //Zmente na vyssie cislo-aky je vysledok a+b?
    b = 2147483647; //Max.hodnota pre int
    c = a + b; 
    
    cout << "a + b = " << c << endl;
    return 0;
    
}
