#ifndef SYSY_DRIVER_HH
#define SYSY_DRIVER_HH

#include <fstream>
#include <iostream>
#include <string>
#include "sysy_parser.hh"
#include "sysyFlexLexer.hh"
class sysy_driver {
public:
    sysy_driver();
    virtual ~sysy_driver();

    std::string file;
    std::ifstream instream;
    int result;

    yy::sysyFlexLexer lexer;
    bool trace_scanning;
    bool trace_parsing;
//    SyntaxCompUnit *root = nullptr;
    std::shared_ptr<SyntaxCompUnit> root=std::make_shared<SyntaxCompUnit>();

    void error(const yy::location &l, const std::string &m);
    void error(const std::string &m);

    std::string preprocess();
    std::shared_ptr<SyntaxCompUnit> parse(const std::string &f);
};
#endif
