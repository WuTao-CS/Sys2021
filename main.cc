#include "SysyBuilder.h"
#include "syntax_tree.hh"
#include "sysy_driver.hh"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <unordered_set>

using namespace std::literals::string_literals;
bool disable_div_optimization = false;

int main(int argc, char **argv)
{

    bool emit = false;
    bool test = false;
    bool opti = false;
    bool debug = true;

    std::shared_ptr<TreeNodeCompUnit> root;
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
            std::string target_path(argv[i]);
            target_path = target_path.substr(0, target_path.length() - 2) + "s";
            auto tree = syntax_tree(root);
            std::cout << "Generate syntax tree success!\n";
            printer.visit(*root);
            SysyBuilder builder;
            tree.run_visitor(builder);
            std::cout << builder.IRprint() << std::endl;
            return 0;
        }
        else
        {
            res = 1;
        }
    }
}