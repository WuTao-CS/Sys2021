#include "sysy_driver.hh"
#include "syntax_tree.hh"

std::shared_ptr<TreeNodeCompUnit> *MonkeyType(const std::string filename){
    sysy_driver driver;
    
    return driver.parse(filename);
}
