#include "two_fer.h"

using namespace std; 

namespace two_fer{

std::string two_fer(std::string input){
    std::string frase;
    if (input != "Vazio"){
        frase="One for " + input + ", one for me.";
    }
    else{
        frase="One for you, one for me.";
    }
    return(frase);
}

} // namespace two_fer
