#ifndef SCANNER_HPP
#define SCANNER_HPP

#if ! defined(yyFlexLexerOnce)
#include <FlexLexer.h>
#endif

#include <fstream>
#include <variant>
#include <memory>
#include <sysy_parser.hh>


namespace yy{
class sysyFlexLexer : public yyFlexLexer {
public:
    sysyFlexLexer() : yyFlexLexer() {
    };
    sysyFlexLexer(std::istream &in)
    : yyFlexLexer(in, std::cout) {
    };
    sysyFlexLexer(std::istream &in, std::ostream &out)
    : yyFlexLexer(in, out) {
    };
    virtual ~sysyFlexLexer() {
    };

    //get rid of override virtual function warning
    using FlexLexer::yylex;
//    virtual int yylex(yy::sysy_parser::semantic_type *lval);
    virtual int yylex(yy::sysy_parser::semantic_type *, yy::sysy_parser::location_type *);
};
}

#endif