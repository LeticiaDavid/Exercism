#include "binary.h"

using namespace std;

namespace binary {

int convert(std::string binario){
    int valor=0;
    int tam=binario.size();
    int numero=0;
    for (int i=0; i<tam; i++){
        std::string bin=binario.substr(i,1);
        if (bin=="0"||bin=="1"){
            numero=pow(2,(tam-i-1))*stoi(bin);
            valor=valor+numero;
        }
        else{
            valor=0;
            return(valor);
            }
        } 
    return(valor);
}

}  // namespace binary