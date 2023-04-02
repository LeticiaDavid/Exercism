#include "scrabble_score.h"

using namespace std; 

namespace scrabble_score {

int score(std::string palavra){
    int score=0;
    int valor=0;
    int tam=palavra.size();

    std::transform(palavra.begin(), palavra.end(), palavra.begin(), ::tolower);
    cout<<palavra<<endl;
    
    for (int i=0; i<tam; i++){
        std::string letra=palavra.substr(i,1);
        if (letra=="a"||letra=="e"||letra=="i"||letra=="o"||letra=="u"||letra=="l"||letra=="n"||letra=="r"||letra=="s"||letra=="t"){
            valor=1;
        } else if (letra=="d"||letra=="g"){
            valor=2;
        } else if (letra=="b"||letra=="c"||letra=="m"||letra=="p"){
               valor=3;
        }
           else if (letra=="f"||letra=="h"||letra=="v"||letra=="w"||letra=="y"){
               valor=4;
        }
           else if (letra=="k"){
               valor=5;
        }
           else if (letra=="j"||letra=="x"){
               valor=8;
        }
           else if (letra=="q"||letra=="z"){
               valor=10;
        }
           else{
            score=0;
        }
        score=score+valor;
    }
  return(score);
}

}  // namespace scrabble_score