#include "syntax_tree.hh"
#include "sysy_driver.hh"


#include <algorithm>
#include <fstream>
#include <iostream>
#include <unordered_set>
using namespace std;
bool disable_div_optimization = false;

int main(int argc, char **argv) 
{


    std::string target_path;
    target_path=string("./test.out");
    bool emit = false;
    bool test = false;
    bool opti = false;
    bool debug = true;

    std::shared_ptr<SyntaxCompUnit> root;
    sysy_driver driver;
    syntax_tree_printer printer;
    int res = 0;
    for (int i = 1; i < argc; i++) 
    {
        if (argv[i] == std::string("-p"))
            driver.trace_parsing = true;
        else if (argv[i] == std::string("-s"))
            driver.trace_scanning = true;
        else if (root = driver.parse(argv[i])) 
        {
            auto tree = syntax_tree(root);
            std::cout<<"Generate syntax tree success!\n";
            printer.visit(*root);
            
        } 
        else
        {
            res=1;
        }
        
    }



}