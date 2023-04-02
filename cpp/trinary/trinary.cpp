#include "trinary.h"

using namespace std;

namespace trinary {

int to_decimal(std::string trinario){
    int valor=0;
    int tam=trinario.size();
    int numero=0;
    for (int i=0; i<tam; i++){
        std::string trin=trinario.substr(i,1);
        if (trin=="0"||trin=="1"||trin=="2"){
            numero=pow(3,(tam-i-1))*stoi(trin);
            valor=valor+numero;
        }
        else{
            valor=0;
            return(valor);
            }
        } 
    return(valor);
}

}  // namespace trinary
