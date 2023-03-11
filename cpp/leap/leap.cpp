#include "leap.h"

namespace leap {

bool is_leap_year(int year)
{
    bool lp = false;
    
    if (year % 4 == 0){
        if (year % 100 == 0 && year % 400 == 0){
            lp = true;
        }
        if (year % 100 != 0 && year % 400 != 0){
            lp = true;
        }
    }
        
    
    return lp;
}

}  // namespace leap