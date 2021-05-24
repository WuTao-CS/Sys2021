// A Bison parser, made by GNU Bison 3.2.

// Skeleton implementation for Bison LALR(1) parsers in C++

// Copyright (C) 2002-2015, 2018 Free Software Foundation, Inc.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// As a special exception, you may create a larger work that contains
// part or all of the Bison parser skeleton and distribute that work
// under terms of your choice, so long as that work isn't itself a
// parser generator using the skeleton or a modified version thereof
// as a parser skeleton.  Alternatively, if you modify or redistribute
// the parser skeleton itself, you may (at your option) remove this
// special exception, which will cause the skeleton and the resulting
// Bison output files to be licensed under the GNU General Public
// License without this special exception.

// This special exception was added by the Free Software Foundation in
// version 2.2 of Bison.

// Undocumented macros, especially those whose name start with YY_,
// are private implementation details.  Do not rely on them.



// First part of user prologue.
#line 1 "Parser.y" // lalr1.cc:431

#include <iostream>
#include <memory>
#include <sysyFlexLexer.hh>
using namespace std;

#undef yylex
#define yylex scanner->yylex

std::shared_ptr<SyntaxCompUnit> rootFromParser;

#line 52 "./build/sysy_parser.cc" // lalr1.cc:431

#include "sysy_parser.hh"




#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> // FIXME: INFRINGES ON USER NAME SPACE.
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

// Whether we are compiled with exception support.
#ifndef YY_EXCEPTIONS
# if defined __GNUC__ && !defined __EXCEPTIONS
#  define YY_EXCEPTIONS 0
# else
#  define YY_EXCEPTIONS 1
# endif
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K].location)
/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

# ifndef YYLLOC_DEFAULT
#  define YYLLOC_DEFAULT(Current, Rhs, N)                               \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).begin  = YYRHSLOC (Rhs, 1).begin;                   \
          (Current).end    = YYRHSLOC (Rhs, N).end;                     \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).begin = (Current).end = YYRHSLOC (Rhs, 0).end;      \
        }                                                               \
    while (/*CONSTCOND*/ false)
# endif


// Suppress unused-variable warnings by "using" E.
#define YYUSE(E) ((void) (E))

// Enable debugging if requested.
#if YYDEBUG

// A pseudo ostream that takes yydebug_ into account.
# define YYCDEBUG if (yydebug_) (*yycdebug_)

# define YY_SYMBOL_PRINT(Title, Symbol)         \
  do {                                          \
    if (yydebug_)                               \
    {                                           \
      *yycdebug_ << Title << ' ';               \
      yy_print_ (*yycdebug_, Symbol);           \
      *yycdebug_ << '\n';                       \
    }                                           \
  } while (false)

# define YY_REDUCE_PRINT(Rule)          \
  do {                                  \
    if (yydebug_)                       \
      yy_reduce_print_ (Rule);          \
  } while (false)

# define YY_STACK_PRINT()               \
  do {                                  \
    if (yydebug_)                       \
      yystack_print_ ();                \
  } while (false)

#else // !YYDEBUG

# define YYCDEBUG if (false) std::cerr
# define YY_SYMBOL_PRINT(Title, Symbol)  YYUSE (Symbol)
# define YY_REDUCE_PRINT(Rule)           static_cast<void> (0)
# define YY_STACK_PRINT()                static_cast<void> (0)

#endif // !YYDEBUG

#define yyerrok         (yyerrstatus_ = 0)
#define yyclearin       (yyla.clear ())

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYRECOVERING()  (!!yyerrstatus_)


namespace yy {
#line 151 "./build/sysy_parser.cc" // lalr1.cc:512

  /// Build a parser object.
  sysy_parser::sysy_parser (sysyFlexLexer* scanner_yyarg)
    :
#if YYDEBUG
      yydebug_ (false),
      yycdebug_ (&std::cerr),
#endif
      scanner (scanner_yyarg)
  {}

  sysy_parser::~sysy_parser ()
  {}


  /*---------------.
  | Symbol types.  |
  `---------------*/

  sysy_parser::syntax_error::syntax_error (const location_type& l, const std::string& m)
    : std::runtime_error (m)
    , location (l)
  {}

  // basic_symbol.
  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol ()
    : value ()
    , location ()
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (YY_RVREF (basic_symbol) other)
    : Base (YY_MOVE (other))
    , value ()
    , location (YY_MOVE (other.location))
  {
    switch (other.type_get ())
    {
      case 32: // TOK_NUMBER
        value.YY_MOVE_OR_COPY< int > (YY_MOVE (other.value));
        break;

      case 84: // AddExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxAddExp> > (YY_MOVE (other.value));
        break;

      case 49: // ConstIndexList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxArrayConstExpList> > (YY_MOVE (other.value));
        break;

      case 70: // AssignStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxAssignStmt> > (YY_MOVE (other.value));
        break;

      case 64: // Block
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlock> > (YY_MOVE (other.value));
        break;

      case 66: // BlockItem
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlockItem> > (YY_MOVE (other.value));
        break;

      case 65: // BlockItemList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlockItemList> > (YY_MOVE (other.value));
        break;

      case 68: // BreakStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBreakStmt> > (YY_MOVE (other.value));
        break;

      case 80: // Callee
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCallee> > (YY_MOVE (other.value));
        break;

      case 45: // CompUnit
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCompUnit> > (YY_MOVE (other.value));
        break;

      case 75: // Cond
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCond> > (YY_MOVE (other.value));
        break;

      case 48: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (other.value));
        break;

      case 51: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (other.value));
        break;

      case 47: // ConstDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDefList> > (YY_MOVE (other.value));
        break;

      case 89: // ConstExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstExp> > (YY_MOVE (other.value));
        break;

      case 53: // ConstInitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstInitVal> > (YY_MOVE (other.value));
        break;

      case 52: // ConstInitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstInitValList> > (YY_MOVE (other.value));
        break;

      case 69: // ContinueStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxContinueStmt> > (YY_MOVE (other.value));
        break;

      case 46: // DeclDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxDeclDef> > (YY_MOVE (other.value));
        break;

      case 86: // EqExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxEqExp> > (YY_MOVE (other.value));
        break;

      case 74: // Exp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxExp> > (YY_MOVE (other.value));
        break;

      case 82: // FuncRParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxExpList> > (YY_MOVE (other.value));
        break;

      case 59: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (other.value));
        break;

      case 63: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (other.value));
        break;

      case 61: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (other.value));
        break;

      case 58: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (other.value));
        break;

      case 57: // InitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitValList> > (YY_MOVE (other.value));
        break;

      case 72: // IterationStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxIterationStmt> > (YY_MOVE (other.value));
        break;

      case 87: // LAndExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLAndExp> > (YY_MOVE (other.value));
        break;

      case 88: // LOrExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLOrExp> > (YY_MOVE (other.value));
        break;

      case 76: // LVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLVal> > (YY_MOVE (other.value));
        break;

      case 83: // MulExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxMulExp> > (YY_MOVE (other.value));
        break;

      case 78: // Number
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxNumber> > (YY_MOVE (other.value));
        break;

      case 62: // IndexList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxParamArrayExpList> > (YY_MOVE (other.value));
        break;

      case 77: // PrimaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxPrimaryExp> > (YY_MOVE (other.value));
        break;

      case 85: // RelExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxRelExp> > (YY_MOVE (other.value));
        break;

      case 73: // ReturnStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxReturnStmt> > (YY_MOVE (other.value));
        break;

      case 71: // SelectStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxSelectStmt> > (YY_MOVE (other.value));
        break;

      case 67: // Stmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxStmt> > (YY_MOVE (other.value));
        break;

      case 79: // UnaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxUnaryExp> > (YY_MOVE (other.value));
        break;

      case 54: // VarDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDecl> > (YY_MOVE (other.value));
        break;

      case 56: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (other.value));
        break;

      case 55: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (other.value));
        break;

      case 31: // TOK_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (other.value));
        break;

      case 50: // BType
      case 60: // FuncType
        value.YY_MOVE_OR_COPY< type_specifier > (YY_MOVE (other.value));
        break;

      case 81: // UnaryOp
        value.YY_MOVE_OR_COPY< unaryop > (YY_MOVE (other.value));
        break;

      default:
        break;
    }

  }


  // Implementation of basic_symbol constructor for each type.
  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (location_type) l)
    : Base (t)
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (int) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxAddExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxArrayConstExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxAssignStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlock>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlockItem>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlockItemList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBreakStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCallee>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCompUnit>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCond>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDecl>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDefList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstInitVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstInitValList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxContinueStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxDeclDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxEqExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncFParam>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncFParamList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxInitVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxInitValList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxIterationStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLAndExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLOrExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxMulExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxNumber>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxParamArrayExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxPrimaryExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxRelExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxReturnStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxSelectStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxUnaryExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDecl>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDefList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::string) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (type_specifier) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (unaryop) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}



  template <typename Base>
  sysy_parser::basic_symbol<Base>::~basic_symbol ()
  {
    clear ();
  }

  template <typename Base>
  void
  sysy_parser::basic_symbol<Base>::clear ()
  {
    // User destructor.
    symbol_number_type yytype = this->type_get ();
    basic_symbol<Base>& yysym = *this;
    (void) yysym;
    switch (yytype)
    {
   default:
      break;
    }

    // Type destructor.
  switch (yytype)
    {
      case 32: // TOK_NUMBER
        value.template destroy< int > ();
        break;

      case 84: // AddExp
        value.template destroy< std::shared_ptr<SyntaxAddExp> > ();
        break;

      case 49: // ConstIndexList
        value.template destroy< std::shared_ptr<SyntaxArrayConstExpList> > ();
        break;

      case 70: // AssignStmt
        value.template destroy< std::shared_ptr<SyntaxAssignStmt> > ();
        break;

      case 64: // Block
        value.template destroy< std::shared_ptr<SyntaxBlock> > ();
        break;

      case 66: // BlockItem
        value.template destroy< std::shared_ptr<SyntaxBlockItem> > ();
        break;

      case 65: // BlockItemList
        value.template destroy< std::shared_ptr<SyntaxBlockItemList> > ();
        break;

      case 68: // BreakStmt
        value.template destroy< std::shared_ptr<SyntaxBreakStmt> > ();
        break;

      case 80: // Callee
        value.template destroy< std::shared_ptr<SyntaxCallee> > ();
        break;

      case 45: // CompUnit
        value.template destroy< std::shared_ptr<SyntaxCompUnit> > ();
        break;

      case 75: // Cond
        value.template destroy< std::shared_ptr<SyntaxCond> > ();
        break;

      case 48: // ConstDecl
        value.template destroy< std::shared_ptr<SyntaxConstDecl> > ();
        break;

      case 51: // ConstDef
        value.template destroy< std::shared_ptr<SyntaxConstDef> > ();
        break;

      case 47: // ConstDefList
        value.template destroy< std::shared_ptr<SyntaxConstDefList> > ();
        break;

      case 89: // ConstExp
        value.template destroy< std::shared_ptr<SyntaxConstExp> > ();
        break;

      case 53: // ConstInitVal
        value.template destroy< std::shared_ptr<SyntaxConstInitVal> > ();
        break;

      case 52: // ConstInitValList
        value.template destroy< std::shared_ptr<SyntaxConstInitValList> > ();
        break;

      case 69: // ContinueStmt
        value.template destroy< std::shared_ptr<SyntaxContinueStmt> > ();
        break;

      case 46: // DeclDef
        value.template destroy< std::shared_ptr<SyntaxDeclDef> > ();
        break;

      case 86: // EqExp
        value.template destroy< std::shared_ptr<SyntaxEqExp> > ();
        break;

      case 74: // Exp
        value.template destroy< std::shared_ptr<SyntaxExp> > ();
        break;

      case 82: // FuncRParams
        value.template destroy< std::shared_ptr<SyntaxExpList> > ();
        break;

      case 59: // FuncDef
        value.template destroy< std::shared_ptr<SyntaxFuncDef> > ();
        break;

      case 63: // FuncFParam
        value.template destroy< std::shared_ptr<SyntaxFuncFParam> > ();
        break;

      case 61: // FuncFParams
        value.template destroy< std::shared_ptr<SyntaxFuncFParamList> > ();
        break;

      case 58: // InitVal
        value.template destroy< std::shared_ptr<SyntaxInitVal> > ();
        break;

      case 57: // InitValList
        value.template destroy< std::shared_ptr<SyntaxInitValList> > ();
        break;

      case 72: // IterationStmt
        value.template destroy< std::shared_ptr<SyntaxIterationStmt> > ();
        break;

      case 87: // LAndExp
        value.template destroy< std::shared_ptr<SyntaxLAndExp> > ();
        break;

      case 88: // LOrExp
        value.template destroy< std::shared_ptr<SyntaxLOrExp> > ();
        break;

      case 76: // LVal
        value.template destroy< std::shared_ptr<SyntaxLVal> > ();
        break;

      case 83: // MulExp
        value.template destroy< std::shared_ptr<SyntaxMulExp> > ();
        break;

      case 78: // Number
        value.template destroy< std::shared_ptr<SyntaxNumber> > ();
        break;

      case 62: // IndexList
        value.template destroy< std::shared_ptr<SyntaxParamArrayExpList> > ();
        break;

      case 77: // PrimaryExp
        value.template destroy< std::shared_ptr<SyntaxPrimaryExp> > ();
        break;

      case 85: // RelExp
        value.template destroy< std::shared_ptr<SyntaxRelExp> > ();
        break;

      case 73: // ReturnStmt
        value.template destroy< std::shared_ptr<SyntaxReturnStmt> > ();
        break;

      case 71: // SelectStmt
        value.template destroy< std::shared_ptr<SyntaxSelectStmt> > ();
        break;

      case 67: // Stmt
        value.template destroy< std::shared_ptr<SyntaxStmt> > ();
        break;

      case 79: // UnaryExp
        value.template destroy< std::shared_ptr<SyntaxUnaryExp> > ();
        break;

      case 54: // VarDecl
        value.template destroy< std::shared_ptr<SyntaxVarDecl> > ();
        break;

      case 56: // VarDef
        value.template destroy< std::shared_ptr<SyntaxVarDef> > ();
        break;

      case 55: // VarDefList
        value.template destroy< std::shared_ptr<SyntaxVarDefList> > ();
        break;

      case 31: // TOK_IDENTIFIER
        value.template destroy< std::string > ();
        break;

      case 50: // BType
      case 60: // FuncType
        value.template destroy< type_specifier > ();
        break;

      case 81: // UnaryOp
        value.template destroy< unaryop > ();
        break;

      default:
        break;
    }

    Base::clear ();
  }

  template <typename Base>
  bool
  sysy_parser::basic_symbol<Base>::empty () const
  {
    return Base::type_get () == empty_symbol;
  }

  template <typename Base>
  void
  sysy_parser::basic_symbol<Base>::move (basic_symbol& s)
  {
    super_type::move (s);
    switch (this->type_get ())
    {
      case 32: // TOK_NUMBER
        value.move< int > (YY_MOVE (s.value));
        break;

      case 84: // AddExp
        value.move< std::shared_ptr<SyntaxAddExp> > (YY_MOVE (s.value));
        break;

      case 49: // ConstIndexList
        value.move< std::shared_ptr<SyntaxArrayConstExpList> > (YY_MOVE (s.value));
        break;

      case 70: // AssignStmt
        value.move< std::shared_ptr<SyntaxAssignStmt> > (YY_MOVE (s.value));
        break;

      case 64: // Block
        value.move< std::shared_ptr<SyntaxBlock> > (YY_MOVE (s.value));
        break;

      case 66: // BlockItem
        value.move< std::shared_ptr<SyntaxBlockItem> > (YY_MOVE (s.value));
        break;

      case 65: // BlockItemList
        value.move< std::shared_ptr<SyntaxBlockItemList> > (YY_MOVE (s.value));
        break;

      case 68: // BreakStmt
        value.move< std::shared_ptr<SyntaxBreakStmt> > (YY_MOVE (s.value));
        break;

      case 80: // Callee
        value.move< std::shared_ptr<SyntaxCallee> > (YY_MOVE (s.value));
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<SyntaxCompUnit> > (YY_MOVE (s.value));
        break;

      case 75: // Cond
        value.move< std::shared_ptr<SyntaxCond> > (YY_MOVE (s.value));
        break;

      case 48: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (s.value));
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (s.value));
        break;

      case 47: // ConstDefList
        value.move< std::shared_ptr<SyntaxConstDefList> > (YY_MOVE (s.value));
        break;

      case 89: // ConstExp
        value.move< std::shared_ptr<SyntaxConstExp> > (YY_MOVE (s.value));
        break;

      case 53: // ConstInitVal
        value.move< std::shared_ptr<SyntaxConstInitVal> > (YY_MOVE (s.value));
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<SyntaxConstInitValList> > (YY_MOVE (s.value));
        break;

      case 69: // ContinueStmt
        value.move< std::shared_ptr<SyntaxContinueStmt> > (YY_MOVE (s.value));
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<SyntaxDeclDef> > (YY_MOVE (s.value));
        break;

      case 86: // EqExp
        value.move< std::shared_ptr<SyntaxEqExp> > (YY_MOVE (s.value));
        break;

      case 74: // Exp
        value.move< std::shared_ptr<SyntaxExp> > (YY_MOVE (s.value));
        break;

      case 82: // FuncRParams
        value.move< std::shared_ptr<SyntaxExpList> > (YY_MOVE (s.value));
        break;

      case 59: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (s.value));
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (s.value));
        break;

      case 61: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (s.value));
        break;

      case 58: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (s.value));
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<SyntaxInitValList> > (YY_MOVE (s.value));
        break;

      case 72: // IterationStmt
        value.move< std::shared_ptr<SyntaxIterationStmt> > (YY_MOVE (s.value));
        break;

      case 87: // LAndExp
        value.move< std::shared_ptr<SyntaxLAndExp> > (YY_MOVE (s.value));
        break;

      case 88: // LOrExp
        value.move< std::shared_ptr<SyntaxLOrExp> > (YY_MOVE (s.value));
        break;

      case 76: // LVal
        value.move< std::shared_ptr<SyntaxLVal> > (YY_MOVE (s.value));
        break;

      case 83: // MulExp
        value.move< std::shared_ptr<SyntaxMulExp> > (YY_MOVE (s.value));
        break;

      case 78: // Number
        value.move< std::shared_ptr<SyntaxNumber> > (YY_MOVE (s.value));
        break;

      case 62: // IndexList
        value.move< std::shared_ptr<SyntaxParamArrayExpList> > (YY_MOVE (s.value));
        break;

      case 77: // PrimaryExp
        value.move< std::shared_ptr<SyntaxPrimaryExp> > (YY_MOVE (s.value));
        break;

      case 85: // RelExp
        value.move< std::shared_ptr<SyntaxRelExp> > (YY_MOVE (s.value));
        break;

      case 73: // ReturnStmt
        value.move< std::shared_ptr<SyntaxReturnStmt> > (YY_MOVE (s.value));
        break;

      case 71: // SelectStmt
        value.move< std::shared_ptr<SyntaxSelectStmt> > (YY_MOVE (s.value));
        break;

      case 67: // Stmt
        value.move< std::shared_ptr<SyntaxStmt> > (YY_MOVE (s.value));
        break;

      case 79: // UnaryExp
        value.move< std::shared_ptr<SyntaxUnaryExp> > (YY_MOVE (s.value));
        break;

      case 54: // VarDecl
        value.move< std::shared_ptr<SyntaxVarDecl> > (YY_MOVE (s.value));
        break;

      case 56: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (s.value));
        break;

      case 55: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (s.value));
        break;

      case 31: // TOK_IDENTIFIER
        value.move< std::string > (YY_MOVE (s.value));
        break;

      case 50: // BType
      case 60: // FuncType
        value.move< type_specifier > (YY_MOVE (s.value));
        break;

      case 81: // UnaryOp
        value.move< unaryop > (YY_MOVE (s.value));
        break;

      default:
        break;
    }

    location = YY_MOVE (s.location);
  }

  // by_type.
  sysy_parser::by_type::by_type ()
    : type (empty_symbol)
  {}

  sysy_parser::by_type::by_type (const by_type& other)
    : type (other.type)
  {}

  sysy_parser::by_type::by_type (token_type t)
    : type (yytranslate_ (t))
  {}

  void
  sysy_parser::by_type::clear ()
  {
    type = empty_symbol;
  }

  void
  sysy_parser::by_type::move (by_type& that)
  {
    type = that.type;
    that.clear ();
  }

  int
  sysy_parser::by_type::type_get () const
  {
    return type;
  }

  // Implementation of make_symbol for each symbol type.
  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_END (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_END, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_ERROR (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ERROR, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_ADD (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ADD, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_SUB (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_SUB, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_MUL (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_MUL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_DIV (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_DIV, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_MOD (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_MOD, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_GT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_GT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_GTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_GTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_EQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_EQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_NEQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NEQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_ASSIGN (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ASSIGN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_SEMICOLIN (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_SEMICOLIN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_COMMA (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_COMMA, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_RPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_RBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_RBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_ELSE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ELSE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_IF (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_IF, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_INT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_INT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_VOID (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_VOID, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_RETURN (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RETURN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_WHILE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_WHILE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_IDENTIFIER (YY_COPY (std::string) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_IDENTIFIER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_NUMBER (YY_COPY (int) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NUMBER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_ARRAY (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ARRAY, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_LETTER (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LETTER, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_EOL (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_EOL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_COMMENT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_COMMENT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_BLANK (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_BLANK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_CONST (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_CONST, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_BREAK (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_BREAK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_CONTINUE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_CONTINUE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_NOT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NOT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_AND (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_AND, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_TOK_OR (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_OR, YY_MOVE (l));
  }



  // by_state.
  sysy_parser::by_state::by_state ()
    : state (empty_state)
  {}

  sysy_parser::by_state::by_state (const by_state& other)
    : state (other.state)
  {}

  void
  sysy_parser::by_state::clear ()
  {
    state = empty_state;
  }

  void
  sysy_parser::by_state::move (by_state& that)
  {
    state = that.state;
    that.clear ();
  }

  sysy_parser::by_state::by_state (state_type s)
    : state (s)
  {}

  sysy_parser::symbol_number_type
  sysy_parser::by_state::type_get () const
  {
    if (state == empty_state)
      return empty_symbol;
    else
      return yystos_[state];
  }

  sysy_parser::stack_symbol_type::stack_symbol_type ()
  {}

  sysy_parser::stack_symbol_type::stack_symbol_type (YY_RVREF (stack_symbol_type) that)
    : super_type (YY_MOVE (that.state), YY_MOVE (that.location))
  {
    switch (that.type_get ())
    {
      case 32: // TOK_NUMBER
        value.YY_MOVE_OR_COPY< int > (YY_MOVE (that.value));
        break;

      case 84: // AddExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxAddExp> > (YY_MOVE (that.value));
        break;

      case 49: // ConstIndexList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxArrayConstExpList> > (YY_MOVE (that.value));
        break;

      case 70: // AssignStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxAssignStmt> > (YY_MOVE (that.value));
        break;

      case 64: // Block
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlock> > (YY_MOVE (that.value));
        break;

      case 66: // BlockItem
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlockItem> > (YY_MOVE (that.value));
        break;

      case 65: // BlockItemList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBlockItemList> > (YY_MOVE (that.value));
        break;

      case 68: // BreakStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxBreakStmt> > (YY_MOVE (that.value));
        break;

      case 80: // Callee
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCallee> > (YY_MOVE (that.value));
        break;

      case 45: // CompUnit
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCompUnit> > (YY_MOVE (that.value));
        break;

      case 75: // Cond
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxCond> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (that.value));
        break;

      case 51: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (that.value));
        break;

      case 47: // ConstDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDefList> > (YY_MOVE (that.value));
        break;

      case 89: // ConstExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstExp> > (YY_MOVE (that.value));
        break;

      case 53: // ConstInitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstInitVal> > (YY_MOVE (that.value));
        break;

      case 52: // ConstInitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstInitValList> > (YY_MOVE (that.value));
        break;

      case 69: // ContinueStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxContinueStmt> > (YY_MOVE (that.value));
        break;

      case 46: // DeclDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxDeclDef> > (YY_MOVE (that.value));
        break;

      case 86: // EqExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxEqExp> > (YY_MOVE (that.value));
        break;

      case 74: // Exp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxExp> > (YY_MOVE (that.value));
        break;

      case 82: // FuncRParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxExpList> > (YY_MOVE (that.value));
        break;

      case 59: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (that.value));
        break;

      case 63: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (that.value));
        break;

      case 61: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 58: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (that.value));
        break;

      case 57: // InitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitValList> > (YY_MOVE (that.value));
        break;

      case 72: // IterationStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxIterationStmt> > (YY_MOVE (that.value));
        break;

      case 87: // LAndExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLAndExp> > (YY_MOVE (that.value));
        break;

      case 88: // LOrExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLOrExp> > (YY_MOVE (that.value));
        break;

      case 76: // LVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxLVal> > (YY_MOVE (that.value));
        break;

      case 83: // MulExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxMulExp> > (YY_MOVE (that.value));
        break;

      case 78: // Number
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxNumber> > (YY_MOVE (that.value));
        break;

      case 62: // IndexList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxParamArrayExpList> > (YY_MOVE (that.value));
        break;

      case 77: // PrimaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxPrimaryExp> > (YY_MOVE (that.value));
        break;

      case 85: // RelExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxRelExp> > (YY_MOVE (that.value));
        break;

      case 73: // ReturnStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxReturnStmt> > (YY_MOVE (that.value));
        break;

      case 71: // SelectStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxSelectStmt> > (YY_MOVE (that.value));
        break;

      case 67: // Stmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxStmt> > (YY_MOVE (that.value));
        break;

      case 79: // UnaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxUnaryExp> > (YY_MOVE (that.value));
        break;

      case 54: // VarDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDecl> > (YY_MOVE (that.value));
        break;

      case 56: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (that.value));
        break;

      case 55: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // TOK_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (that.value));
        break;

      case 50: // BType
      case 60: // FuncType
        value.YY_MOVE_OR_COPY< type_specifier > (YY_MOVE (that.value));
        break;

      case 81: // UnaryOp
        value.YY_MOVE_OR_COPY< unaryop > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

#if defined __cplusplus && 201103L <= __cplusplus
    // that is emptied.
    that.state = empty_state;
#endif
  }

  sysy_parser::stack_symbol_type::stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) that)
    : super_type (s, YY_MOVE (that.location))
  {
    switch (that.type_get ())
    {
      case 32: // TOK_NUMBER
        value.move< int > (YY_MOVE (that.value));
        break;

      case 84: // AddExp
        value.move< std::shared_ptr<SyntaxAddExp> > (YY_MOVE (that.value));
        break;

      case 49: // ConstIndexList
        value.move< std::shared_ptr<SyntaxArrayConstExpList> > (YY_MOVE (that.value));
        break;

      case 70: // AssignStmt
        value.move< std::shared_ptr<SyntaxAssignStmt> > (YY_MOVE (that.value));
        break;

      case 64: // Block
        value.move< std::shared_ptr<SyntaxBlock> > (YY_MOVE (that.value));
        break;

      case 66: // BlockItem
        value.move< std::shared_ptr<SyntaxBlockItem> > (YY_MOVE (that.value));
        break;

      case 65: // BlockItemList
        value.move< std::shared_ptr<SyntaxBlockItemList> > (YY_MOVE (that.value));
        break;

      case 68: // BreakStmt
        value.move< std::shared_ptr<SyntaxBreakStmt> > (YY_MOVE (that.value));
        break;

      case 80: // Callee
        value.move< std::shared_ptr<SyntaxCallee> > (YY_MOVE (that.value));
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<SyntaxCompUnit> > (YY_MOVE (that.value));
        break;

      case 75: // Cond
        value.move< std::shared_ptr<SyntaxCond> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (that.value));
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (that.value));
        break;

      case 47: // ConstDefList
        value.move< std::shared_ptr<SyntaxConstDefList> > (YY_MOVE (that.value));
        break;

      case 89: // ConstExp
        value.move< std::shared_ptr<SyntaxConstExp> > (YY_MOVE (that.value));
        break;

      case 53: // ConstInitVal
        value.move< std::shared_ptr<SyntaxConstInitVal> > (YY_MOVE (that.value));
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<SyntaxConstInitValList> > (YY_MOVE (that.value));
        break;

      case 69: // ContinueStmt
        value.move< std::shared_ptr<SyntaxContinueStmt> > (YY_MOVE (that.value));
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<SyntaxDeclDef> > (YY_MOVE (that.value));
        break;

      case 86: // EqExp
        value.move< std::shared_ptr<SyntaxEqExp> > (YY_MOVE (that.value));
        break;

      case 74: // Exp
        value.move< std::shared_ptr<SyntaxExp> > (YY_MOVE (that.value));
        break;

      case 82: // FuncRParams
        value.move< std::shared_ptr<SyntaxExpList> > (YY_MOVE (that.value));
        break;

      case 59: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (that.value));
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (that.value));
        break;

      case 61: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 58: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (that.value));
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<SyntaxInitValList> > (YY_MOVE (that.value));
        break;

      case 72: // IterationStmt
        value.move< std::shared_ptr<SyntaxIterationStmt> > (YY_MOVE (that.value));
        break;

      case 87: // LAndExp
        value.move< std::shared_ptr<SyntaxLAndExp> > (YY_MOVE (that.value));
        break;

      case 88: // LOrExp
        value.move< std::shared_ptr<SyntaxLOrExp> > (YY_MOVE (that.value));
        break;

      case 76: // LVal
        value.move< std::shared_ptr<SyntaxLVal> > (YY_MOVE (that.value));
        break;

      case 83: // MulExp
        value.move< std::shared_ptr<SyntaxMulExp> > (YY_MOVE (that.value));
        break;

      case 78: // Number
        value.move< std::shared_ptr<SyntaxNumber> > (YY_MOVE (that.value));
        break;

      case 62: // IndexList
        value.move< std::shared_ptr<SyntaxParamArrayExpList> > (YY_MOVE (that.value));
        break;

      case 77: // PrimaryExp
        value.move< std::shared_ptr<SyntaxPrimaryExp> > (YY_MOVE (that.value));
        break;

      case 85: // RelExp
        value.move< std::shared_ptr<SyntaxRelExp> > (YY_MOVE (that.value));
        break;

      case 73: // ReturnStmt
        value.move< std::shared_ptr<SyntaxReturnStmt> > (YY_MOVE (that.value));
        break;

      case 71: // SelectStmt
        value.move< std::shared_ptr<SyntaxSelectStmt> > (YY_MOVE (that.value));
        break;

      case 67: // Stmt
        value.move< std::shared_ptr<SyntaxStmt> > (YY_MOVE (that.value));
        break;

      case 79: // UnaryExp
        value.move< std::shared_ptr<SyntaxUnaryExp> > (YY_MOVE (that.value));
        break;

      case 54: // VarDecl
        value.move< std::shared_ptr<SyntaxVarDecl> > (YY_MOVE (that.value));
        break;

      case 56: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (that.value));
        break;

      case 55: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // TOK_IDENTIFIER
        value.move< std::string > (YY_MOVE (that.value));
        break;

      case 50: // BType
      case 60: // FuncType
        value.move< type_specifier > (YY_MOVE (that.value));
        break;

      case 81: // UnaryOp
        value.move< unaryop > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

    // that is emptied.
    that.type = empty_symbol;
  }

#if defined __cplusplus && __cplusplus < 201103L
  sysy_parser::stack_symbol_type&
  sysy_parser::stack_symbol_type::operator= (stack_symbol_type& that)
  {
    state = that.state;
    switch (that.type_get ())
    {
      case 32: // TOK_NUMBER
        value.move< int > (that.value);
        break;

      case 84: // AddExp
        value.move< std::shared_ptr<SyntaxAddExp> > (that.value);
        break;

      case 49: // ConstIndexList
        value.move< std::shared_ptr<SyntaxArrayConstExpList> > (that.value);
        break;

      case 70: // AssignStmt
        value.move< std::shared_ptr<SyntaxAssignStmt> > (that.value);
        break;

      case 64: // Block
        value.move< std::shared_ptr<SyntaxBlock> > (that.value);
        break;

      case 66: // BlockItem
        value.move< std::shared_ptr<SyntaxBlockItem> > (that.value);
        break;

      case 65: // BlockItemList
        value.move< std::shared_ptr<SyntaxBlockItemList> > (that.value);
        break;

      case 68: // BreakStmt
        value.move< std::shared_ptr<SyntaxBreakStmt> > (that.value);
        break;

      case 80: // Callee
        value.move< std::shared_ptr<SyntaxCallee> > (that.value);
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<SyntaxCompUnit> > (that.value);
        break;

      case 75: // Cond
        value.move< std::shared_ptr<SyntaxCond> > (that.value);
        break;

      case 48: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (that.value);
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (that.value);
        break;

      case 47: // ConstDefList
        value.move< std::shared_ptr<SyntaxConstDefList> > (that.value);
        break;

      case 89: // ConstExp
        value.move< std::shared_ptr<SyntaxConstExp> > (that.value);
        break;

      case 53: // ConstInitVal
        value.move< std::shared_ptr<SyntaxConstInitVal> > (that.value);
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<SyntaxConstInitValList> > (that.value);
        break;

      case 69: // ContinueStmt
        value.move< std::shared_ptr<SyntaxContinueStmt> > (that.value);
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<SyntaxDeclDef> > (that.value);
        break;

      case 86: // EqExp
        value.move< std::shared_ptr<SyntaxEqExp> > (that.value);
        break;

      case 74: // Exp
        value.move< std::shared_ptr<SyntaxExp> > (that.value);
        break;

      case 82: // FuncRParams
        value.move< std::shared_ptr<SyntaxExpList> > (that.value);
        break;

      case 59: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (that.value);
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (that.value);
        break;

      case 61: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (that.value);
        break;

      case 58: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (that.value);
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<SyntaxInitValList> > (that.value);
        break;

      case 72: // IterationStmt
        value.move< std::shared_ptr<SyntaxIterationStmt> > (that.value);
        break;

      case 87: // LAndExp
        value.move< std::shared_ptr<SyntaxLAndExp> > (that.value);
        break;

      case 88: // LOrExp
        value.move< std::shared_ptr<SyntaxLOrExp> > (that.value);
        break;

      case 76: // LVal
        value.move< std::shared_ptr<SyntaxLVal> > (that.value);
        break;

      case 83: // MulExp
        value.move< std::shared_ptr<SyntaxMulExp> > (that.value);
        break;

      case 78: // Number
        value.move< std::shared_ptr<SyntaxNumber> > (that.value);
        break;

      case 62: // IndexList
        value.move< std::shared_ptr<SyntaxParamArrayExpList> > (that.value);
        break;

      case 77: // PrimaryExp
        value.move< std::shared_ptr<SyntaxPrimaryExp> > (that.value);
        break;

      case 85: // RelExp
        value.move< std::shared_ptr<SyntaxRelExp> > (that.value);
        break;

      case 73: // ReturnStmt
        value.move< std::shared_ptr<SyntaxReturnStmt> > (that.value);
        break;

      case 71: // SelectStmt
        value.move< std::shared_ptr<SyntaxSelectStmt> > (that.value);
        break;

      case 67: // Stmt
        value.move< std::shared_ptr<SyntaxStmt> > (that.value);
        break;

      case 79: // UnaryExp
        value.move< std::shared_ptr<SyntaxUnaryExp> > (that.value);
        break;

      case 54: // VarDecl
        value.move< std::shared_ptr<SyntaxVarDecl> > (that.value);
        break;

      case 56: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (that.value);
        break;

      case 55: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (that.value);
        break;

      case 31: // TOK_IDENTIFIER
        value.move< std::string > (that.value);
        break;

      case 50: // BType
      case 60: // FuncType
        value.move< type_specifier > (that.value);
        break;

      case 81: // UnaryOp
        value.move< unaryop > (that.value);
        break;

      default:
        break;
    }

    location = that.location;
    // that is emptied.
    that.state = empty_state;
    return *this;
  }
#endif

  template <typename Base>
  void
  sysy_parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
  {
    if (yymsg)
      YY_SYMBOL_PRINT (yymsg, yysym);
  }

#if YYDEBUG
  template <typename Base>
  void
  sysy_parser::yy_print_ (std::ostream& yyo,
                                     const basic_symbol<Base>& yysym) const
  {
    std::ostream& yyoutput = yyo;
    YYUSE (yyoutput);
    symbol_number_type yytype = yysym.type_get ();
    // Avoid a (spurious) G++ 4.8 warning about "array subscript is
    // below array bounds".
    if (yysym.empty ())
      std::abort ();
    yyo << (yytype < yyntokens_ ? "token" : "nterm")
        << ' ' << yytname_[yytype] << " ("
        << yysym.location << ": ";
    YYUSE (yytype);
    yyo << ')';
  }
#endif

  void
  sysy_parser::yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym)
  {
    if (m)
      YY_SYMBOL_PRINT (m, sym);
    yystack_.push (YY_MOVE (sym));
  }

  void
  sysy_parser::yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym)
  {
#if defined __cplusplus && 201103L <= __cplusplus
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
#else
    stack_symbol_type ss (s, sym);
    yypush_ (m, ss);
#endif
  }

  void
  sysy_parser::yypop_ (int n)
  {
    yystack_.pop (n);
  }

#if YYDEBUG
  std::ostream&
  sysy_parser::debug_stream () const
  {
    return *yycdebug_;
  }

  void
  sysy_parser::set_debug_stream (std::ostream& o)
  {
    yycdebug_ = &o;
  }


  sysy_parser::debug_level_type
  sysy_parser::debug_level () const
  {
    return yydebug_;
  }

  void
  sysy_parser::set_debug_level (debug_level_type l)
  {
    yydebug_ = l;
  }
#endif // YYDEBUG

  sysy_parser::state_type
  sysy_parser::yy_lr_goto_state_ (state_type yystate, int yysym)
  {
    int yyr = yypgoto_[yysym - yyntokens_] + yystate;
    if (0 <= yyr && yyr <= yylast_ && yycheck_[yyr] == yystate)
      return yytable_[yyr];
    else
      return yydefgoto_[yysym - yyntokens_];
  }

  bool
  sysy_parser::yy_pact_value_is_default_ (int yyvalue)
  {
    return yyvalue == yypact_ninf_;
  }

  bool
  sysy_parser::yy_table_value_is_error_ (int yyvalue)
  {
    return yyvalue == yytable_ninf_;
  }

  int
  sysy_parser::operator() ()
  {
    return parse ();
  }

  int
  sysy_parser::parse ()
  {
    // State.
    int yyn;
    /// Length of the RHS of the rule being reduced.
    int yylen = 0;

    // Error handling.
    int yynerrs_ = 0;
    int yyerrstatus_ = 0;

    /// The lookahead symbol.
    symbol_type yyla;

    /// The locations where the error started and ended.
    stack_symbol_type yyerror_range[3];

    /// The return value of parse ().
    int yyresult;

#if YY_EXCEPTIONS
    try
#endif // YY_EXCEPTIONS
      {
    YYCDEBUG << "Starting parse\n";


    /* Initialize the stack.  The initial state will be set in
       yynewstate, since the latter expects the semantical and the
       location values to have been already stored, initialize these
       stacks with a primary value.  */
    yystack_.clear ();
    yypush_ (YY_NULLPTR, 0, YY_MOVE (yyla));

    // A new symbol was pushed on the stack.
  yynewstate:
    YYCDEBUG << "Entering state " << yystack_[0].state << '\n';

    // Accept?
    if (yystack_[0].state == yyfinal_)
      goto yyacceptlab;

    goto yybackup;

    // Backup.
  yybackup:
    // Try to take a decision without lookahead.
    yyn = yypact_[yystack_[0].state];
    if (yy_pact_value_is_default_ (yyn))
      goto yydefault;

    // Read a lookahead token.
    if (yyla.empty ())
      {
        YYCDEBUG << "Reading a token: ";
#if YY_EXCEPTIONS
        try
#endif // YY_EXCEPTIONS
          {
            yyla.type = yytranslate_ (yylex (&yyla.value, &yyla.location));
          }
#if YY_EXCEPTIONS
        catch (const syntax_error& yyexc)
          {
            error (yyexc);
            goto yyerrlab1;
          }
#endif // YY_EXCEPTIONS
      }
    YY_SYMBOL_PRINT ("Next token is", yyla);

    /* If the proper action on seeing token YYLA.TYPE is to reduce or
       to detect an error, take that action.  */
    yyn += yyla.type_get ();
    if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yyla.type_get ())
      goto yydefault;

    // Reduce or error.
    yyn = yytable_[yyn];
    if (yyn <= 0)
      {
        if (yy_table_value_is_error_ (yyn))
          goto yyerrlab;
        yyn = -yyn;
        goto yyreduce;
      }

    // Count tokens shifted since error; after three, turn off error status.
    if (yyerrstatus_)
      --yyerrstatus_;

    // Shift the lookahead token.
    yypush_ ("Shifting", yyn, YY_MOVE (yyla));
    goto yynewstate;

  /*-----------------------------------------------------------.
  | yydefault -- do the default action for the current state.  |
  `-----------------------------------------------------------*/
  yydefault:
    yyn = yydefact_[yystack_[0].state];
    if (yyn == 0)
      goto yyerrlab;
    goto yyreduce;

  /*-----------------------------.
  | yyreduce -- Do a reduction.  |
  `-----------------------------*/
  yyreduce:
    yylen = yyr2_[yyn];
    {
      stack_symbol_type yylhs;
      yylhs.state = yy_lr_goto_state_ (yystack_[yylen].state, yyr1_[yyn]);
      /* Variants are always initialized to an empty instance of the
         correct type. The default '$$ = $1' action is NOT applied
         when using variants.  */
      switch (yyr1_[yyn])
    {
      case 32: // TOK_NUMBER
        yylhs.value.emplace< int > ();
        break;

      case 84: // AddExp
        yylhs.value.emplace< std::shared_ptr<SyntaxAddExp> > ();
        break;

      case 49: // ConstIndexList
        yylhs.value.emplace< std::shared_ptr<SyntaxArrayConstExpList> > ();
        break;

      case 70: // AssignStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxAssignStmt> > ();
        break;

      case 64: // Block
        yylhs.value.emplace< std::shared_ptr<SyntaxBlock> > ();
        break;

      case 66: // BlockItem
        yylhs.value.emplace< std::shared_ptr<SyntaxBlockItem> > ();
        break;

      case 65: // BlockItemList
        yylhs.value.emplace< std::shared_ptr<SyntaxBlockItemList> > ();
        break;

      case 68: // BreakStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxBreakStmt> > ();
        break;

      case 80: // Callee
        yylhs.value.emplace< std::shared_ptr<SyntaxCallee> > ();
        break;

      case 45: // CompUnit
        yylhs.value.emplace< std::shared_ptr<SyntaxCompUnit> > ();
        break;

      case 75: // Cond
        yylhs.value.emplace< std::shared_ptr<SyntaxCond> > ();
        break;

      case 48: // ConstDecl
        yylhs.value.emplace< std::shared_ptr<SyntaxConstDecl> > ();
        break;

      case 51: // ConstDef
        yylhs.value.emplace< std::shared_ptr<SyntaxConstDef> > ();
        break;

      case 47: // ConstDefList
        yylhs.value.emplace< std::shared_ptr<SyntaxConstDefList> > ();
        break;

      case 89: // ConstExp
        yylhs.value.emplace< std::shared_ptr<SyntaxConstExp> > ();
        break;

      case 53: // ConstInitVal
        yylhs.value.emplace< std::shared_ptr<SyntaxConstInitVal> > ();
        break;

      case 52: // ConstInitValList
        yylhs.value.emplace< std::shared_ptr<SyntaxConstInitValList> > ();
        break;

      case 69: // ContinueStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxContinueStmt> > ();
        break;

      case 46: // DeclDef
        yylhs.value.emplace< std::shared_ptr<SyntaxDeclDef> > ();
        break;

      case 86: // EqExp
        yylhs.value.emplace< std::shared_ptr<SyntaxEqExp> > ();
        break;

      case 74: // Exp
        yylhs.value.emplace< std::shared_ptr<SyntaxExp> > ();
        break;

      case 82: // FuncRParams
        yylhs.value.emplace< std::shared_ptr<SyntaxExpList> > ();
        break;

      case 59: // FuncDef
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncDef> > ();
        break;

      case 63: // FuncFParam
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncFParam> > ();
        break;

      case 61: // FuncFParams
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncFParamList> > ();
        break;

      case 58: // InitVal
        yylhs.value.emplace< std::shared_ptr<SyntaxInitVal> > ();
        break;

      case 57: // InitValList
        yylhs.value.emplace< std::shared_ptr<SyntaxInitValList> > ();
        break;

      case 72: // IterationStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxIterationStmt> > ();
        break;

      case 87: // LAndExp
        yylhs.value.emplace< std::shared_ptr<SyntaxLAndExp> > ();
        break;

      case 88: // LOrExp
        yylhs.value.emplace< std::shared_ptr<SyntaxLOrExp> > ();
        break;

      case 76: // LVal
        yylhs.value.emplace< std::shared_ptr<SyntaxLVal> > ();
        break;

      case 83: // MulExp
        yylhs.value.emplace< std::shared_ptr<SyntaxMulExp> > ();
        break;

      case 78: // Number
        yylhs.value.emplace< std::shared_ptr<SyntaxNumber> > ();
        break;

      case 62: // IndexList
        yylhs.value.emplace< std::shared_ptr<SyntaxParamArrayExpList> > ();
        break;

      case 77: // PrimaryExp
        yylhs.value.emplace< std::shared_ptr<SyntaxPrimaryExp> > ();
        break;

      case 85: // RelExp
        yylhs.value.emplace< std::shared_ptr<SyntaxRelExp> > ();
        break;

      case 73: // ReturnStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxReturnStmt> > ();
        break;

      case 71: // SelectStmt
        yylhs.value.emplace< std::shared_ptr<SyntaxSelectStmt> > ();
        break;

      case 67: // Stmt
        yylhs.value.emplace< std::shared_ptr<SyntaxStmt> > ();
        break;

      case 79: // UnaryExp
        yylhs.value.emplace< std::shared_ptr<SyntaxUnaryExp> > ();
        break;

      case 54: // VarDecl
        yylhs.value.emplace< std::shared_ptr<SyntaxVarDecl> > ();
        break;

      case 56: // VarDef
        yylhs.value.emplace< std::shared_ptr<SyntaxVarDef> > ();
        break;

      case 55: // VarDefList
        yylhs.value.emplace< std::shared_ptr<SyntaxVarDefList> > ();
        break;

      case 31: // TOK_IDENTIFIER
        yylhs.value.emplace< std::string > ();
        break;

      case 50: // BType
      case 60: // FuncType
        yylhs.value.emplace< type_specifier > ();
        break;

      case 81: // UnaryOp
        yylhs.value.emplace< unaryop > ();
        break;

      default:
        break;
    }


      // Default location.
      {
        slice<stack_symbol_type, stack_type> slice (yystack_, yylen);
        YYLLOC_DEFAULT (yylhs.location, slice, yylen);
        yyerror_range[1].location = yylhs.location;
      }

      // Perform the reduction.
      YY_REDUCE_PRINT (yyn);
#if YY_EXCEPTIONS
      try
#endif // YY_EXCEPTIONS
        {
          switch (yyn)
            {
  case 2:
#line 136 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::make_shared<SyntaxCompUnit>();
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxDeclDef> > ()));
	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
    }
#line 2535 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 3:
#line 141 "Parser.y" // lalr1.cc:906
    {
	yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxDeclDef> > ()));
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ());
	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
    }
#line 2545 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 4:
#line 146 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ());
    	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
    	return 0;
    }
#line 2555 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 5:
#line 153 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDecl> > ());
    }
#line 2564 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 6:
#line 157 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
        yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDecl> > ());
    }
#line 2573 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 7:
#line 161 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->FuncDef=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxFuncDef> > ());
    }
#line 2582 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 8:
#line 167 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()=std::make_shared<SyntaxConstDefList>();
	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDef> > ()));
    }
#line 2591 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 9:
#line 171 "Parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDef> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxConstDefList> > ());
    }
#line 2600 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 10:
#line 177 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstDecl> > ()=std::make_shared<SyntaxConstDecl>();
	// Assume that the memory of 'ConstDefList' won't be released
	// Here we copy pointers
	yylhs.value.as< std::shared_ptr<SyntaxConstDecl> > ()->ConstDefList=yystack_[1].value.as< std::shared_ptr<SyntaxConstDefList> > ()->list;
    }
#line 2611 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 11:
#line 185 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()=std::make_shared<SyntaxArrayConstExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxConstExp> > ()));
    }
#line 2620 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 12:
#line 189 "Parser.y" // lalr1.cc:906
    {
    	yystack_[3].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxConstExp> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ());
    }
#line 2629 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 13:
#line 195 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_INT;
    }
#line 2637 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 14:
#line 200 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()=std::make_shared<SyntaxConstDef>();
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ConstInitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->id=yystack_[2].value.as< std::string > ();
    }
#line 2647 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 15:
#line 205 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()=std::make_shared<SyntaxConstDef>();
	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ConstInitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ());
	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
    }
#line 2658 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 16:
#line 213 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()=std::make_shared<SyntaxConstInitValList>();
	yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ()));
    }
#line 2667 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 17:
#line 217 "Parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxConstInitValList> > ());
    }
#line 2676 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 18:
#line 223 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()=std::make_shared<SyntaxConstInitVal>();
	yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()->ConstExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstExp> > ());
    }
#line 2685 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 19:
#line 227 "Parser.y" // lalr1.cc:906
    {

    }
#line 2693 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 20:
#line 230 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()=std::make_shared<SyntaxConstInitVal>();
        yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()->ConstInitValList=yystack_[1].value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list;
    }
#line 2702 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 21:
#line 236 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()=std::make_shared<SyntaxVarDecl>();
	yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()->type=yystack_[2].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()->VarDefList=yystack_[1].value.as< std::shared_ptr<SyntaxVarDefList> > ()->list;
//	std::cout<<"VarDecl"<<std::endl;
    }
#line 2713 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 22:
#line 244 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()=std::make_shared<SyntaxVarDefList>();
	yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDef> > ()));
    }
#line 2722 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 23:
#line 248 "Parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDef> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxVarDefList> > ());
    }
#line 2731 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 24:
#line 254 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[0].value.as< std::string > ();
    }
#line 2740 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 25:
#line 258 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[2].value.as< std::string > ();
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->InitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ());
    }
#line 2750 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 26:
#line 263 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[1].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->ArrayConstExpList=yystack_[0].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
    }
#line 2760 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 27:
#line 268 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->InitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ());
    }
#line 2771 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 28:
#line 276 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()=std::make_shared<SyntaxInitValList>();
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ()));
    }
#line 2780 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 29:
#line 280 "Parser.y" // lalr1.cc:906
    {
	yystack_[2].value.as< std::shared_ptr<SyntaxInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ()));
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxInitValList> > ());
    }
#line 2789 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 30:
#line 286 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()=std::make_shared<SyntaxInitVal>();
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()->Exp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ());
    }
#line 2798 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 31:
#line 290 "Parser.y" // lalr1.cc:906
    {

    }
#line 2806 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 32:
#line 293 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()=std::make_shared<SyntaxInitVal>();
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()->InitValList=yystack_[1].value.as< std::shared_ptr<SyntaxInitValList> > ()->list;
    }
#line 2815 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 33:
#line 299 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
    }
#line 2826 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 34:
#line 305 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[5].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[4].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->FuncFParamList=yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list;
    }
#line 2838 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 35:
#line 312 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
    }
#line 2849 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 36:
#line 318 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[5].value.as< type_specifier > ();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[4].value.as< std::string > ();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->FuncFParamList=yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list;
    }
#line 2861 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 37:
#line 327 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_VOID;
    }
#line 2869 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 38:
#line 332 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()=std::make_shared<SyntaxFuncFParamList>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list.emplace_back(yystack_[0].value.as< std::shared_ptr<SyntaxFuncFParam> > ());
    }
#line 2878 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 39:
#line 336 "Parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxFuncFParam> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ());
    }
#line 2887 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 40:
#line 343 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()=std::make_shared<SyntaxParamArrayExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ()));
    }
#line 2896 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 41:
#line 347 "Parser.y" // lalr1.cc:906
    {
    	yystack_[3].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ());
    }
#line 2905 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 42:
#line 353 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[1].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[0].value.as< std::string > ();
    }
#line 2915 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 43:
#line 358 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[3].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[2].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
    }
#line 2926 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 44:
#line 364 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->ParamArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
    }
#line 2938 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 45:
#line 371 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[5].value.as< type_specifier > ();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[4].value.as< std::string > ();
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->ParamArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
    }
#line 2950 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 46:
#line 380 "Parser.y" // lalr1.cc:906
    {

    }
#line 2958 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 47:
#line 383 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxBlock> > ()=std::make_shared<SyntaxBlock>();
    	yylhs.value.as< std::shared_ptr<SyntaxBlock> > ()->BlockItemList=yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list;
//    	std::cout<<"Block"<<std::endl;
    }
#line 2968 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 48:
#line 390 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()=std::make_shared<SyntaxBlockItemList>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlockItem> > ()));
    }
#line 2977 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 49:
#line 394 "Parser.y" // lalr1.cc:906
    {
    	yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlockItem> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ());
    }
#line 2986 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 50:
#line 400 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDecl> > ());
    }
#line 2995 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 51:
#line 405 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDecl> > ());
    }
#line 3004 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 52:
#line 409 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3013 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 53:
#line 419 "Parser.y" // lalr1.cc:906
    {
 	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
 	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->BreakStmt=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxBreakStmt> > ());
     }
#line 3022 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 54:
#line 423 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->ContinueStmt=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxContinueStmt> > ());
     }
#line 3031 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 55:
#line 427 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->AssignStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAssignStmt> > ());
     }
#line 3040 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 56:
#line 431 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
     }
#line 3049 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 57:
#line 435 "Parser.y" // lalr1.cc:906
    {
     }
#line 3056 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 58:
#line 437 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
     }
#line 3065 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 59:
#line 441 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->SelectStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxSelectStmt> > ());
     }
#line 3074 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 60:
#line 445 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->IterationStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxIterationStmt> > ());
     }
#line 3083 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 61:
#line 449 "Parser.y" // lalr1.cc:906
    {
     	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->ReturnStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxReturnStmt> > ());
     }
#line 3092 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 62:
#line 455 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBreakStmt> > ()=std::make_shared<SyntaxBreakStmt>();
    }
#line 3100 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 63:
#line 459 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxContinueStmt> > ()=std::make_shared<SyntaxContinueStmt>();
    }
#line 3108 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 64:
#line 463 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAssignStmt> > ()=std::make_shared<SyntaxAssignStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxAssignStmt> > ()->LVal=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxLVal> > ());
    }
#line 3117 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 65:
#line 469 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()=std::make_shared<SyntaxSelectStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxCond> > ());
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->ifStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3127 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 66:
#line 474 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()=std::make_shared<SyntaxSelectStmt>();
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->Cond=std::move(yystack_[4].value.as< std::shared_ptr<SyntaxCond> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->ifStmt=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxStmt> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->elseStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3138 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 67:
#line 497 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()=std::make_shared<SyntaxIterationStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxCond> > ());
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3148 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 68:
#line 503 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()=std::make_shared<SyntaxReturnStmt>();
    }
#line 3156 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 69:
#line 506 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()=std::make_shared<SyntaxReturnStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
    }
#line 3165 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 70:
#line 535 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxExp> > ()=std::make_shared<SyntaxExp>();
	yylhs.value.as< std::shared_ptr<SyntaxExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
    }
#line 3174 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 71:
#line 541 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCond> > ()=std::make_shared<SyntaxCond>();
	yylhs.value.as< std::shared_ptr<SyntaxCond> > ()->LOrExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLOrExp> > ());
    }
#line 3183 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 72:
#line 547 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()=std::make_shared<SyntaxLVal>();
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->id=yystack_[0].value.as< std::string > ();
    }
#line 3192 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 73:
#line 551 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()=std::make_shared<SyntaxLVal>();
    	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->id=yystack_[1].value.as< std::string > ();
    	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->ArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
    }
#line 3202 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 74:
#line 558 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
    }
#line 3211 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 75:
#line 562 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->LVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLVal> > ());
    }
#line 3220 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 76:
#line 566 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->Number=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxNumber> > ());
    }
#line 3229 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 77:
#line 572 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxNumber> > ()=std::make_shared<SyntaxNumber>();
	yylhs.value.as< std::shared_ptr<SyntaxNumber> > ()->num=yystack_[0].value.as< int > ();
    }
#line 3238 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 78:
#line 579 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->PrimaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxPrimaryExp> > ());
    }
#line 3247 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 79:
#line 583 "Parser.y" // lalr1.cc:906
    {
        yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->Callee=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxCallee> > ());
    }
#line 3256 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 80:
#line 587 "Parser.y" // lalr1.cc:906
    {
        yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->op=yystack_[1].value.as< unaryop > ();
    }
#line 3266 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 81:
#line 594 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()=std::make_shared<SyntaxCallee>();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->id=yystack_[2].value.as< std::string > ();
    }
#line 3275 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 82:
#line 598 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()=std::make_shared<SyntaxCallee>();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->ExpList=yystack_[1].value.as< std::shared_ptr<SyntaxExpList> > ()->list;
    }
#line 3285 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 83:
#line 606 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< unaryop > ()=OP_POS;
    }
#line 3293 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 84:
#line 609 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< unaryop > ()=OP_NEG;
    }
#line 3301 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 85:
#line 612 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< unaryop > ()=OP_NOT;
    }
#line 3309 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 86:
#line 617 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()=std::make_shared<SyntaxExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ()));
    }
#line 3318 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 87:
#line 621 "Parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxExpList> > ());
    }
#line 3327 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 88:
#line 627 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
    }
#line 3336 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 89:
#line 631 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_MUL;
    }
#line 3347 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 90:
#line 637 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_DIV;
    }
#line 3358 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 91:
#line 643 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_MOD;
    }
#line 3369 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 92:
#line 651 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
    }
#line 3378 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 93:
#line 655 "Parser.y" // lalr1.cc:906
    {
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxAddExp> > ());
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->op=OP_PLUS;
    }
#line 3389 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 94:
#line 661 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->op=OP_MINUS;
    }
#line 3400 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 95:
#line 669 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
    }
#line 3409 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 96:
#line 673 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_LT;
    }
#line 3420 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 97:
#line 679 "Parser.y" // lalr1.cc:906
    {
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_GT;
    }
#line 3431 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 98:
#line 685 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_LTE;
    }
#line 3442 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 99:
#line 691 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_GTE;
    }
#line 3453 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 100:
#line 699 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
    }
#line 3462 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 101:
#line 703 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxEqExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->op=OP_EQ;
    }
#line 3473 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 102:
#line 709 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxEqExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->op=OP_NEQ;
    }
#line 3484 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 103:
#line 717 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()=std::make_shared<SyntaxLAndExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxEqExp> > ());
    }
#line 3493 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 104:
#line 721 "Parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()=std::make_shared<SyntaxLAndExp>();
    	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->LAndExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxLAndExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxEqExp> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->op=OP_AND;
    }
#line 3504 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 105:
#line 729 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()=std::make_shared<SyntaxLOrExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLAndExp> > ());
    }
#line 3513 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 106:
#line 733 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()=std::make_shared<SyntaxLOrExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LOrExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxLOrExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLAndExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->op=OP_OR;
    }
#line 3524 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 107:
#line 741 "Parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstExp> > ()=std::make_shared<SyntaxConstExp>();
	yylhs.value.as< std::shared_ptr<SyntaxConstExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
    }
#line 3533 "./build/sysy_parser.cc" // lalr1.cc:906
    break;


#line 3537 "./build/sysy_parser.cc" // lalr1.cc:906
            default:
              break;
            }
        }
#if YY_EXCEPTIONS
      catch (const syntax_error& yyexc)
        {
          error (yyexc);
          YYERROR;
        }
#endif // YY_EXCEPTIONS
      YY_SYMBOL_PRINT ("-> $$ =", yylhs);
      yypop_ (yylen);
      yylen = 0;
      YY_STACK_PRINT ();

      // Shift the result of the reduction.
      yypush_ (YY_NULLPTR, YY_MOVE (yylhs));
    }
    goto yynewstate;

  /*--------------------------------------.
  | yyerrlab -- here on detecting error.  |
  `--------------------------------------*/
  yyerrlab:
    // If not already recovering from an error, report this error.
    if (!yyerrstatus_)
      {
        ++yynerrs_;
        error (yyla.location, yysyntax_error_ (yystack_[0].state, yyla));
      }


    yyerror_range[1].location = yyla.location;
    if (yyerrstatus_ == 3)
      {
        /* If just tried and failed to reuse lookahead token after an
           error, discard it.  */

        // Return failure if at end of input.
        if (yyla.type_get () == yyeof_)
          YYABORT;
        else if (!yyla.empty ())
          {
            yy_destroy_ ("Error: discarding", yyla);
            yyla.clear ();
          }
      }

    // Else will try to reuse lookahead token after shifting the error token.
    goto yyerrlab1;


  /*---------------------------------------------------.
  | yyerrorlab -- error raised explicitly by YYERROR.  |
  `---------------------------------------------------*/
  yyerrorlab:

    /* Pacify compilers like GCC when the user code never invokes
       YYERROR and the label yyerrorlab therefore never appears in user
       code.  */
    if (false)
      goto yyerrorlab;
    /* Do not reclaim the symbols of the rule whose action triggered
       this YYERROR.  */
    yypop_ (yylen);
    yylen = 0;
    goto yyerrlab1;

  /*-------------------------------------------------------------.
  | yyerrlab1 -- common code for both syntax error and YYERROR.  |
  `-------------------------------------------------------------*/
  yyerrlab1:
    yyerrstatus_ = 3;   // Each real token shifted decrements this.
    {
      stack_symbol_type error_token;
      for (;;)
        {
          yyn = yypact_[yystack_[0].state];
          if (!yy_pact_value_is_default_ (yyn))
            {
              yyn += yyterror_;
              if (0 <= yyn && yyn <= yylast_ && yycheck_[yyn] == yyterror_)
                {
                  yyn = yytable_[yyn];
                  if (0 < yyn)
                    break;
                }
            }

          // Pop the current state because it cannot handle the error token.
          if (yystack_.size () == 1)
            YYABORT;

          yyerror_range[1].location = yystack_[0].location;
          yy_destroy_ ("Error: popping", yystack_[0]);
          yypop_ ();
          YY_STACK_PRINT ();
        }

      yyerror_range[2].location = yyla.location;
      YYLLOC_DEFAULT (error_token.location, yyerror_range, 2);

      // Shift the error token.
      error_token.state = yyn;
      yypush_ ("Shifting", YY_MOVE (error_token));
    }
    goto yynewstate;

    // Accept.
  yyacceptlab:
    yyresult = 0;
    goto yyreturn;

    // Abort.
  yyabortlab:
    yyresult = 1;
    goto yyreturn;

  yyreturn:
    if (!yyla.empty ())
      yy_destroy_ ("Cleanup: discarding lookahead", yyla);

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYABORT or YYACCEPT.  */
    yypop_ (yylen);
    while (1 < yystack_.size ())
      {
        yy_destroy_ ("Cleanup: popping", yystack_[0]);
        yypop_ ();
      }

    return yyresult;
  }
#if YY_EXCEPTIONS
    catch (...)
      {
        YYCDEBUG << "Exception caught: cleaning lookahead and stack\n";
        // Do not try to display the values of the reclaimed symbols,
        // as their printers might throw an exception.
        if (!yyla.empty ())
          yy_destroy_ (YY_NULLPTR, yyla);

        while (1 < yystack_.size ())
          {
            yy_destroy_ (YY_NULLPTR, yystack_[0]);
            yypop_ ();
          }
        throw;
      }
#endif // YY_EXCEPTIONS
  }

  void
  sysy_parser::error (const syntax_error& yyexc)
  {
    error (yyexc.location, yyexc.what ());
  }

  // Generate an error message.
  std::string
  sysy_parser::yysyntax_error_ (state_type, const symbol_type&) const
  {
    return YY_("syntax error");
  }


  const short sysy_parser::yypact_ninf_ = -144;

  const signed char sysy_parser::yytable_ninf_ = -1;

  const short
  sysy_parser::yypact_[] =
  {
      -1,  -144,  -144,   -16,    18,  -144,  -144,    -3,  -144,  -144,
      31,    40,  -144,  -144,  -144,    44,   108,  -144,    21,    27,
     121,  -144,    92,     9,   225,    83,  -144,    51,    75,   214,
      93,  -144,    40,  -144,  -144,   225,   191,    82,  -144,  -144,
    -144,  -144,  -144,  -144,  -144,  -144,  -144,   225,    23,   172,
      89,    74,   112,  -144,   172,   109,    92,   225,   106,  -144,
      89,   137,   193,  -144,  -144,   214,  -144,   133,  -144,    -5,
    -144,    87,   225,   139,  -144,   225,   225,   225,   225,   225,
     135,  -144,   142,   -16,    89,  -144,  -144,   134,  -144,    89,
    -144,    72,  -144,  -144,  -144,    92,  -144,  -144,  -144,   152,
     149,   225,  -144,  -144,  -144,    23,    23,  -144,  -144,   160,
     221,   162,  -144,  -144,  -144,    51,  -144,  -144,   163,  -144,
    -144,   168,   171,  -144,  -144,  -144,  -144,   174,   184,    53,
    -144,  -144,  -144,  -144,   214,  -144,  -144,   225,  -144,  -144,
     185,   225,  -144,   192,   225,  -144,  -144,  -144,  -144,  -144,
     225,   187,   189,  -144,  -144,  -144,   198,   172,   124,   128,
     179,   170,  -144,   208,   212,   139,   187,    47,   225,   225,
     225,   225,   225,   225,   225,   225,    47,  -144,   139,   210,
     172,   172,   172,   172,   124,   124,   128,   179,  -144,    47,
    -144
  };

  const unsigned char
  sysy_parser::yydefact_[] =
  {
       0,    13,    37,     0,     0,     2,     5,     0,     6,     7,
       0,     0,     1,     4,     3,    24,     0,    22,     0,     0,
       0,     8,     0,     0,     0,    26,    21,     0,     0,     0,
       0,    10,     0,    83,    84,     0,     0,    72,    77,    85,
      25,    30,    75,    78,    76,    88,    79,     0,    92,    70,
       0,     0,     0,    38,   107,     0,     0,     0,    24,    23,
       0,     0,     0,    14,    18,     0,     9,     0,    31,     0,
      28,     0,     0,    73,    80,     0,     0,     0,     0,     0,
       0,    35,    42,     0,     0,    11,    27,     0,    33,     0,
      19,     0,    16,    15,    74,     0,    32,    81,    86,     0,
       0,     0,    89,    90,    91,    93,    94,    57,    46,     0,
       0,     0,    62,    63,    50,     0,    51,    58,     0,    48,
      52,     0,     0,    55,    59,    60,    61,     0,    75,     0,
      39,    36,    12,    34,     0,    20,    29,     0,    82,    40,
       0,     0,    68,     0,     0,    47,    49,    53,    54,    56,
       0,    43,     0,    17,    87,    41,     0,    95,   100,   103,
     105,    71,    69,     0,     0,    44,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    64,    45,    65,
      96,    98,    97,    99,   101,   102,   104,   106,    67,     0,
      66
  };

  const short
  sysy_parser::yypgoto_[] =
  {
    -144,  -144,   232,  -144,   -64,   220,     3,   209,  -144,   -53,
     -63,  -144,   215,  -144,   -34,  -144,  -144,   219,  -143,   165,
     -40,  -144,   125,  -142,  -144,  -144,  -144,  -144,  -144,  -144,
     -21,   107,   -76,  -144,  -144,    -8,  -144,  -144,  -144,   105,
     -24,    33,    76,    79,  -144,     0
  };

  const short
  sysy_parser::yydefgoto_[] =
  {
      -1,     4,     5,    20,     6,    25,    51,    21,    91,    63,
       8,    16,    17,    69,    40,     9,    10,    52,    73,    53,
     117,   118,   119,   120,   121,   122,   123,   124,   125,   126,
     127,   156,    42,    43,    44,    45,    46,    47,    99,    48,
      49,   158,   159,   160,   161,    64
  };

  const unsigned char
  sysy_parser::yytable_[] =
  {
      54,    41,    70,     7,   128,    54,    11,     7,   165,    92,
      81,     1,    93,    95,    67,    41,   114,   116,    12,    96,
      88,    13,    86,   178,    55,   179,     1,     2,    15,    50,
      75,    76,    77,    54,   188,    41,     1,     3,    54,    74,
      28,    54,   128,    29,   131,     1,     2,   190,    24,   133,
      98,   100,    33,    34,   114,   116,     3,    87,    33,    34,
      22,   136,    18,    23,   107,    24,    35,   102,   103,   104,
      80,    19,    35,   109,    41,   151,   110,   111,    37,    38,
     140,   153,    58,   115,    37,    38,   112,   113,    39,   143,
     134,   128,    33,    34,    39,    60,   135,    33,    34,    56,
     128,    71,     1,    72,    57,    82,    35,    97,   152,    65,
      54,    35,    80,   128,    57,    36,   154,   157,    37,    38,
     157,   115,    22,    37,    38,    26,    27,    24,    39,   164,
      83,    85,    84,    39,   168,   169,   170,   171,    31,    32,
      33,    34,   172,   173,   180,   181,   182,   183,   157,   157,
     157,   157,   107,    94,    35,    83,   132,    89,    80,   108,
     101,   109,     1,   129,   110,   111,    37,    38,    33,    34,
     137,   139,   138,     3,   112,   113,    39,    78,    79,   141,
     107,   144,    35,   105,   106,   147,    80,   145,   148,   109,
       1,   149,   110,   111,    37,    38,    33,    34,    33,    34,
     150,     3,   112,   113,    39,   184,   185,   155,    72,   162,
      35,   166,    35,   175,    36,    68,    62,    90,   167,    33,
      34,   174,    37,    38,    37,    38,    33,    34,   176,   177,
      33,    34,    39,    35,    39,   189,    14,    62,   142,    30,
      35,    66,    59,   146,    35,    37,    38,    61,   130,     0,
     186,   163,    37,    38,   187,    39,    37,    38,     0,     0,
       0,     0,    39,     0,     0,     0,    39
  };

  const short
  sysy_parser::yycheck_[] =
  {
      24,    22,    36,     0,    80,    29,     3,     4,   151,    62,
      50,    27,    65,    18,    35,    36,    80,    80,     0,    24,
      60,     3,    56,   166,    24,   167,    27,    28,    31,    20,
       7,     8,     9,    57,   176,    56,    27,    38,    62,    47,
      19,    65,   118,    16,    84,    27,    28,   189,    21,    89,
      71,    72,     5,     6,   118,   118,    38,    57,     5,     6,
      16,    95,    31,    19,    17,    21,    19,    75,    76,    77,
      23,    31,    19,    26,    95,    22,    29,    30,    31,    32,
     101,   134,    31,    80,    31,    32,    39,    40,    41,   110,
      18,   167,     5,     6,    41,    20,    24,     5,     6,    16,
     176,    19,    27,    21,    21,    31,    19,    20,   129,    16,
     134,    19,    23,   189,    21,    23,   137,   141,    31,    32,
     144,   118,    16,    31,    32,    17,    18,    21,    41,   150,
      18,    22,    20,    41,    10,    11,    12,    13,    17,    18,
       5,     6,    14,    15,   168,   169,   170,   171,   172,   173,
     174,   175,    17,    20,    19,    18,    22,    20,    23,    24,
      21,    26,    27,    21,    29,    30,    31,    32,     5,     6,
      18,    22,    20,    38,    39,    40,    41,     5,     6,    19,
      17,    19,    19,    78,    79,    17,    23,    24,    17,    26,
      27,    17,    29,    30,    31,    32,     5,     6,     5,     6,
      16,    38,    39,    40,    41,   172,   173,    22,    21,    17,
      19,    22,    19,    43,    23,    24,    23,    24,    20,     5,
       6,    42,    31,    32,    31,    32,     5,     6,    20,    17,
       5,     6,    41,    19,    41,    25,     4,    23,    17,    19,
      19,    32,    27,   118,    19,    31,    32,    28,    83,    -1,
     174,   144,    31,    32,   175,    41,    31,    32,    -1,    -1,
      -1,    -1,    41,    -1,    -1,    -1,    41
  };

  const unsigned char
  sysy_parser::yystos_[] =
  {
       0,    27,    28,    38,    45,    46,    48,    50,    54,    59,
      60,    50,     0,     3,    46,    31,    55,    56,    31,    31,
      47,    51,    16,    19,    21,    49,    17,    18,    19,    16,
      49,    17,    18,     5,     6,    19,    23,    31,    32,    41,
      58,    74,    76,    77,    78,    79,    80,    81,    83,    84,
      20,    50,    61,    63,    84,    89,    16,    21,    31,    56,
      20,    61,    23,    53,    89,    16,    51,    74,    24,    57,
      58,    19,    21,    62,    79,     7,     8,     9,     5,     6,
      23,    64,    31,    18,    20,    22,    58,    89,    64,    20,
      24,    52,    53,    53,    20,    18,    24,    20,    74,    82,
      74,    21,    79,    79,    79,    83,    83,    17,    24,    26,
      29,    30,    39,    40,    48,    50,    54,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    76,    21,
      63,    64,    22,    64,    18,    24,    58,    18,    20,    22,
      74,    19,    17,    74,    19,    24,    66,    17,    17,    17,
      16,    22,    74,    53,    74,    22,    75,    84,    85,    86,
      87,    88,    17,    75,    74,    62,    22,    20,    10,    11,
      12,    13,    14,    15,    42,    43,    20,    17,    62,    67,
      84,    84,    84,    84,    85,    85,    86,    87,    67,    25,
      67
  };

  const unsigned char
  sysy_parser::yyr1_[] =
  {
       0,    44,    45,    45,    45,    46,    46,    46,    47,    47,
      48,    49,    49,    50,    51,    51,    52,    52,    53,    53,
      53,    54,    55,    55,    56,    56,    56,    56,    57,    57,
      58,    58,    58,    59,    59,    59,    59,    60,    61,    61,
      62,    62,    63,    63,    63,    63,    64,    64,    65,    65,
      66,    66,    66,    67,    67,    67,    67,    67,    67,    67,
      67,    67,    68,    69,    70,    71,    71,    72,    73,    73,
      74,    75,    76,    76,    77,    77,    77,    78,    79,    79,
      79,    80,    80,    81,    81,    81,    82,    82,    83,    83,
      83,    83,    84,    84,    84,    85,    85,    85,    85,    85,
      86,    86,    86,    87,    87,    88,    88,    89
  };

  const unsigned char
  sysy_parser::yyr2_[] =
  {
       0,     2,     1,     2,     2,     1,     1,     1,     1,     3,
       4,     3,     4,     1,     3,     4,     1,     3,     1,     2,
       3,     3,     1,     3,     1,     3,     2,     4,     1,     3,
       1,     2,     3,     5,     6,     5,     6,     1,     1,     3,
       3,     4,     2,     4,     5,     6,     2,     3,     1,     2,
       1,     1,     1,     2,     2,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     4,     5,     7,     5,     2,     3,
       1,     1,     1,     2,     3,     1,     1,     1,     1,     1,
       2,     3,     4,     1,     1,     1,     1,     3,     1,     3,
       3,     3,     1,     3,     3,     1,     3,     3,     3,     3,
       1,     3,     3,     1,     3,     1,     3,     1
  };


#if YYDEBUG
  // YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
  // First, the terminals, then, starting at \a yyntokens_, nonterminals.
  const char*
  const sysy_parser::yytname_[] =
  {
  "$end", "error", "$undefined", "TOK_END", "TOK_ERROR", "TOK_ADD",
  "TOK_SUB", "TOK_MUL", "TOK_DIV", "TOK_MOD", "TOK_LT", "TOK_LTE",
  "TOK_GT", "TOK_GTE", "TOK_EQ", "TOK_NEQ", "TOK_ASSIGN", "TOK_SEMICOLIN",
  "TOK_COMMA", "TOK_LPARENTHESE", "TOK_RPARENTHESE", "TOK_LBRACKET",
  "TOK_RBRACKET", "TOK_LBRACE", "TOK_RBRACE", "TOK_ELSE", "TOK_IF",
  "TOK_INT", "TOK_VOID", "TOK_RETURN", "TOK_WHILE", "TOK_IDENTIFIER",
  "TOK_NUMBER", "TOK_ARRAY", "TOK_LETTER", "TOK_EOL", "TOK_COMMENT",
  "TOK_BLANK", "TOK_CONST", "TOK_BREAK", "TOK_CONTINUE", "TOK_NOT",
  "TOK_AND", "TOK_OR", "$accept", "CompUnit", "DeclDef", "ConstDefList",
  "ConstDecl", "ConstIndexList", "BType", "ConstDef", "ConstInitValList",
  "ConstInitVal", "VarDecl", "VarDefList", "VarDef", "InitValList",
  "InitVal", "FuncDef", "FuncType", "FuncFParams", "IndexList",
  "FuncFParam", "Block", "BlockItemList", "BlockItem", "Stmt", "BreakStmt",
  "ContinueStmt", "AssignStmt", "SelectStmt", "IterationStmt",
  "ReturnStmt", "Exp", "Cond", "LVal", "PrimaryExp", "Number", "UnaryExp",
  "Callee", "UnaryOp", "FuncRParams", "MulExp", "AddExp", "RelExp",
  "EqExp", "LAndExp", "LOrExp", "ConstExp", YY_NULLPTR
  };


  const unsigned short
  sysy_parser::yyrline_[] =
  {
       0,   136,   136,   141,   146,   153,   157,   161,   167,   171,
     177,   185,   189,   195,   200,   205,   213,   217,   223,   227,
     230,   236,   244,   248,   254,   258,   263,   268,   276,   280,
     286,   290,   293,   299,   305,   312,   318,   327,   332,   336,
     343,   347,   353,   358,   364,   371,   380,   383,   390,   394,
     400,   405,   409,   419,   423,   427,   431,   435,   437,   441,
     445,   449,   455,   459,   463,   469,   474,   497,   503,   506,
     535,   541,   547,   551,   558,   562,   566,   572,   579,   583,
     587,   594,   598,   606,   609,   612,   617,   621,   627,   631,
     637,   643,   651,   655,   661,   669,   673,   679,   685,   691,
     699,   703,   709,   717,   721,   729,   733,   741
  };

  // Print the state stack on the debug stream.
  void
  sysy_parser::yystack_print_ ()
  {
    *yycdebug_ << "Stack now";
    for (stack_type::const_iterator
           i = yystack_.begin (),
           i_end = yystack_.end ();
         i != i_end; ++i)
      *yycdebug_ << ' ' << i->state;
    *yycdebug_ << '\n';
  }

  // Report on the debug stream that the rule \a yyrule is going to be reduced.
  void
  sysy_parser::yy_reduce_print_ (int yyrule)
  {
    unsigned yylno = yyrline_[yyrule];
    int yynrhs = yyr2_[yyrule];
    // Print the symbols being reduced, and their result.
    *yycdebug_ << "Reducing stack by rule " << yyrule - 1
               << " (line " << yylno << "):\n";
    // The symbols being reduced.
    for (int yyi = 0; yyi < yynrhs; yyi++)
      YY_SYMBOL_PRINT ("   $" << yyi + 1 << " =",
                       yystack_[(yynrhs) - (yyi + 1)]);
  }
#endif // YYDEBUG

  // Symbol number corresponding to token number t.
  sysy_parser::token_number_type
  sysy_parser::yytranslate_ (int t)
  {
    static
    const token_number_type
    translate_table[] =
    {
     0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43
    };
    const unsigned user_token_number_max_ = 298;
    const token_number_type undef_token_ = 2;

    if (static_cast<int> (t) <= yyeof_)
      return yyeof_;
    else if (static_cast<unsigned> (t) <= user_token_number_max_)
      return translate_table[t];
    else
      return undef_token_;
  }


} // yy
#line 4024 "./build/sysy_parser.cc" // lalr1.cc:1217
#line 940 "Parser.y" // lalr1.cc:1218

//void yy::sysy_parser::error (const std::string& m){
//	std::cerr << "Find error in parsering, " << m<< "\n";
//}
void yy::sysy_parser::error (const location_type& l, const std::string& m){
	std::cerr << l << "\n";
	std::cerr << "Find error in parsering, " << m<< "\n";
}
