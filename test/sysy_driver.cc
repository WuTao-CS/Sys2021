#include <sstream>
#include <fstream>
#include "sysy_driver.hh"

extern std::shared_ptr<SyntaxCompUnit> rootFromParser;

sysy_driver::sysy_driver() : trace_scanning(false), trace_parsing(false) {
}
sysy_driver::~sysy_driver() {}

std::shared_ptr<SyntaxCompUnit> sysy_driver::parse(const std::string &f) {
    file = f;
    std::cout<<"Opening file "<<file<<"\n";

    lexer.set_debug(trace_scanning);
    instream.open(file);
//    std::cout<<instream.rdbuf()<<std::endl;

    std::cout<<"Generating scanner&parser!\n";
    yy::sysyFlexLexer scanner{instream, std::cout};
    yy::sysy_parser parser(&scanner);
    parser.set_debug_level(trace_parsing);

    std::cout<<"Starting parsing!\n";
    int x = parser.parse();
    if(x){
        std::cout<<"Parse failed!"<<"\n";
        assert(x == 0);
    }
    std::cout<<"Parse succeed!"<<"\n";
    instream.close();

    this->root=rootFromParser;
    std::cout<<"Current root of syntax tree is "<<this->root<<"\n";

    return (this->root);
}

void sysy_driver::error(const yy::location &l, const std::string &m) {
    std::cout << l << ": " << m << std::endl;
}
void sysy_driver::error(const std::string &m) {
    std::cout << m << std::endl;
}