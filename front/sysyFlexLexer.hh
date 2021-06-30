#ifndef SCANNER_HPP
#define SCANNER_HPP

#if !defined(yyFlexLexerOnce)
#include <FlexLexer.h>
#endif

#include <fstream>
#include <memory>
#include <sysy_parser.hh>
#include <variant>

namespace yy {
class sysyFlexLexer : public yyFlexLexer
{
  public:
    sysyFlexLexer() : yyFlexLexer(){};
    sysyFlexLexer(std::istream &in) : yyFlexLexer(in, std::cout){};
    sysyFlexLexer(std::istream &in, std::ostream &out) : yyFlexLexer(in, out){};
    virtual ~sysyFlexLexer(){};
    using FlexLexer::yylex;
    virtual int yylex(yy::sysy_parser::semantic_type *,
                      yy::sysy_parser::location_type *);
};
} // namespace yy

#endif