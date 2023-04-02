#include "reverse_string.h"

using namespace std; 

namespace reverse_string 
{

string reverse_string (string word)
{
    reverse(word.begin(), word.end());
	cout<<"\n"<<word; 
    return word;
}

}  // namespace reverse_string
