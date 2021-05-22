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
#line 1 "Sysy_parser.y" // lalr1.cc:431

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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (other.value));
        break;

      case 51: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (other.value));
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (other.value));
        break;

      case 63: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (other.value));
        break;

      case 62: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (other.value));
        break;

      case 57: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (other.value));
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (other.value));
        break;

      case 56: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (other.value));
        break;

      case 31: // T_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (other.value));
        break;

      case 50: // BType
      case 61: // FuncType
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.template destroy< std::shared_ptr<SyntaxConstDecl> > ();
        break;

      case 51: // ConstDef
        value.template destroy< std::shared_ptr<SyntaxConstDef> > ();
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.template destroy< std::shared_ptr<SyntaxFuncDef> > ();
        break;

      case 63: // FuncFParam
        value.template destroy< std::shared_ptr<SyntaxFuncFParam> > ();
        break;

      case 62: // FuncFParams
        value.template destroy< std::shared_ptr<SyntaxFuncFParamList> > ();
        break;

      case 57: // InitVal
        value.template destroy< std::shared_ptr<SyntaxInitVal> > ();
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.template destroy< std::shared_ptr<SyntaxVarDef> > ();
        break;

      case 56: // VarDefList
        value.template destroy< std::shared_ptr<SyntaxVarDefList> > ();
        break;

      case 31: // T_IDENTIFIER
        value.template destroy< std::string > ();
        break;

      case 50: // BType
      case 61: // FuncType
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (s.value));
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (s.value));
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (s.value));
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (s.value));
        break;

      case 62: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (s.value));
        break;

      case 57: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (s.value));
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (s.value));
        break;

      case 56: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (s.value));
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (YY_MOVE (s.value));
        break;

      case 50: // BType
      case 61: // FuncType
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
  sysy_parser::make_T_END (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_END, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_ERROR (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_ERROR, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_ADD (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_ADD, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_SUB (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_SUB, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_MUL (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_MUL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_DIV (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_DIV, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_MOD (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_MOD, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LT (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_GT (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_GT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_GTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_GTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_EQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_EQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_NEQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_NEQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_ASSIGN (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_ASSIGN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_SEMICOLIN (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_SEMICOLIN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_COMMA (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_COMMA, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_RPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_RPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_RBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_RBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_RBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_RBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_ELSE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_ELSE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_IF (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_IF, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_INT (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_INT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_VOID (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_VOID, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_RETURN (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_RETURN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_WHILE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_WHILE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_IDENTIFIER (YY_COPY (std::string) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::T_IDENTIFIER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_NUMBER (YY_COPY (int) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::T_NUMBER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_ARRAY (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_ARRAY, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_LETTER (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_LETTER, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_EOL (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_EOL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_COMMENT (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_COMMENT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_BLANK (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_BLANK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_CONST (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_CONST, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_BREAK (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_BREAK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_CONTINUE (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_CONTINUE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_NOT (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_NOT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_AND (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_AND, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_T_OR (YY_COPY (location_type) l)
  {
    return symbol_type (token::T_OR, YY_MOVE (l));
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (that.value));
        break;

      case 51: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (that.value));
        break;

      case 63: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (that.value));
        break;

      case 62: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 57: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (that.value));
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (that.value));
        break;

      case 56: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // T_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (that.value));
        break;

      case 50: // BType
      case 61: // FuncType
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (YY_MOVE (that.value));
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (YY_MOVE (that.value));
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (YY_MOVE (that.value));
        break;

      case 62: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 57: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (YY_MOVE (that.value));
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (YY_MOVE (that.value));
        break;

      case 56: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (YY_MOVE (that.value));
        break;

      case 50: // BType
      case 61: // FuncType
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        value.move< std::shared_ptr<SyntaxConstDecl> > (that.value);
        break;

      case 51: // ConstDef
        value.move< std::shared_ptr<SyntaxConstDef> > (that.value);
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        value.move< std::shared_ptr<SyntaxFuncDef> > (that.value);
        break;

      case 63: // FuncFParam
        value.move< std::shared_ptr<SyntaxFuncFParam> > (that.value);
        break;

      case 62: // FuncFParams
        value.move< std::shared_ptr<SyntaxFuncFParamList> > (that.value);
        break;

      case 57: // InitVal
        value.move< std::shared_ptr<SyntaxInitVal> > (that.value);
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        value.move< std::shared_ptr<SyntaxVarDef> > (that.value);
        break;

      case 56: // VarDefList
        value.move< std::shared_ptr<SyntaxVarDefList> > (that.value);
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (that.value);
        break;

      case 50: // BType
      case 61: // FuncType
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
      case 32: // T_NUMBER
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

      case 47: // ConstDecl
        yylhs.value.emplace< std::shared_ptr<SyntaxConstDecl> > ();
        break;

      case 51: // ConstDef
        yylhs.value.emplace< std::shared_ptr<SyntaxConstDef> > ();
        break;

      case 48: // ConstDefList
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

      case 60: // FuncDef
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncDef> > ();
        break;

      case 63: // FuncFParam
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncFParam> > ();
        break;

      case 62: // FuncFParams
        yylhs.value.emplace< std::shared_ptr<SyntaxFuncFParamList> > ();
        break;

      case 57: // InitVal
        yylhs.value.emplace< std::shared_ptr<SyntaxInitVal> > ();
        break;

      case 58: // InitValList
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

      case 59: // IndexList
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

      case 55: // VarDef
        yylhs.value.emplace< std::shared_ptr<SyntaxVarDef> > ();
        break;

      case 56: // VarDefList
        yylhs.value.emplace< std::shared_ptr<SyntaxVarDefList> > ();
        break;

      case 31: // T_IDENTIFIER
        yylhs.value.emplace< std::string > ();
        break;

      case 50: // BType
      case 61: // FuncType
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
#line 137 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::make_shared<SyntaxCompUnit>();
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxDeclDef> > ()));
	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
	std::cout<<"CompUnit Decl"<<std::endl;

    }
#line 2537 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 3:
#line 144 "Sysy_parser.y" // lalr1.cc:906
    {
	yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxDeclDef> > ()));
	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ());
	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
	std::cout<<"CompUnit Decl"<<std::endl;

    }
#line 2549 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 4:
#line 151 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxCompUnit> > ());
    	rootFromParser=yylhs.value.as< std::shared_ptr<SyntaxCompUnit> > ();
    	return 0;
    }
#line 2559 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 5:
#line 158 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDecl> > ());
	std::cout<<"DeclDef : ConstDecl"<<std::endl;
    }
#line 2569 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 6:
#line 163 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
    yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDecl> > ());
	std::cout<<"DeclDef : VarDecl"<<std::endl;
    }
#line 2579 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 7:
#line 168 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()=std::make_shared<SyntaxDeclDef>();
	yylhs.value.as< std::shared_ptr<SyntaxDeclDef> > ()->FuncDef=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxFuncDef> > ());
	std::cout<<"DeclDef : FuncDef"<<std::endl;
    }
#line 2589 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 8:
#line 175 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstDecl> > ()=std::make_shared<SyntaxConstDecl>();
	// Assume that the memory of 'ConstDefList' won't be released
	// Here we copy pointers
	yylhs.value.as< std::shared_ptr<SyntaxConstDecl> > ()->ConstDefList=yystack_[1].value.as< std::shared_ptr<SyntaxConstDefList> > ()->list;
	std::cout<<"ConstDecl"<<std::endl;
    }
#line 2601 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 9:
#line 184 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()=std::make_shared<SyntaxConstDefList>();
	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDef> > ()));
	std::cout<<"ConstDefList : ConstDef"<<std::endl;
    }
#line 2611 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 10:
#line 189 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDef> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxConstDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxConstDefList> > ());
		std::cout<<"ConstDefList : ConstDefList T_COMMA ConstDef"<<std::endl;
    }
#line 2621 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 11:
#line 196 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()=std::make_shared<SyntaxArrayConstExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxConstExp> > ()));
	std::cout<<"ConstIndexList : T_LBRACKET ConstExp T_RBRACKET"<<std::endl;
    }
#line 2631 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 12:
#line 201 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[3].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxConstExp> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ());
		std::cout<<"ConstIndexList T_LBRACKET ConstExp T_RBRACKET"<<std::endl;
		
    }
#line 2642 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 13:
#line 209 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_INT;
	std::cout<<"INT"<<std::endl;
    }
#line 2651 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 14:
#line 215 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()=std::make_shared<SyntaxConstDef>();
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ConstInitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->id=yystack_[2].value.as< std::string > ();
		std::cout<<"ConstDef : T_IDENTIFIER T_ASSIGN ConstInitVal"<<std::endl;
    }
#line 2662 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 15:
#line 221 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()=std::make_shared<SyntaxConstDef>();
		yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ConstInitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ());
		yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->id=yystack_[3].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<SyntaxConstDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
		std::cout<<"ConstDef : T_IDENTIFIER ConstIndexList T_ASSIGN ConstInitVal"<<std::endl;
    }
#line 2674 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 16:
#line 231 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()=std::make_shared<SyntaxConstInitValList>();
		yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ()));
		std::cout<<"ConstInitValList : ConstInitVal"<<std::endl;
    }
#line 2684 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 17:
#line 236 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstInitVal> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxConstInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxConstInitValList> > ());
		std::cout<<"ConstInitValList : ConstInitValList T_COMMA ConstInitVa"<<std::endl;
    }
#line 2694 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 18:
#line 244 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()=std::make_shared<SyntaxConstInitVal>();
		yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()->ConstExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstExp> > ());
		std::cout<<"ConstInitVal : ConstExp"<<endl;
    }
#line 2704 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 19:
#line 249 "Sysy_parser.y" // lalr1.cc:906
    {

    }
#line 2712 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 20:
#line 252 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()=std::make_shared<SyntaxConstInitVal>();
        yylhs.value.as< std::shared_ptr<SyntaxConstInitVal> > ()->ConstInitValList=yystack_[1].value.as< std::shared_ptr<SyntaxConstInitValList> > ()->list;
		std::cout<<"ConstInitVal : T_LBRACE ConstInitValList T_RBRACE"<<endl;
    }
#line 2722 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 21:
#line 260 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()=std::make_shared<SyntaxVarDecl>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()->type=yystack_[2].value.as< type_specifier > ();
		yylhs.value.as< std::shared_ptr<SyntaxVarDecl> > ()->VarDefList=yystack_[1].value.as< std::shared_ptr<SyntaxVarDefList> > ()->list;
		std::cout<<"VarDecl"<<std::endl;
    }
#line 2733 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 22:
#line 268 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[0].value.as< std::string > ();
		std::cout<<"VarDef : T_IDENTIFIE"<<std::endl;
    }
#line 2743 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 23:
#line 273 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[2].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->InitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ());
		std::cout<<"VarDef :T_IDENTIFIER T_ASSIGN InitVal "<<std::endl;
    }
#line 2754 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 24:
#line 279 "Sysy_parser.y" // lalr1.cc:906
    {

    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[1].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->ArrayConstExpList=yystack_[0].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
		std::cout<<"VarDef: T_IDENTIFIER ConstIndexList"<<std::endl;
    }
#line 2766 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 25:
#line 286 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()=std::make_shared<SyntaxVarDef>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->id=yystack_[3].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<SyntaxArrayConstExpList> > ()->list;
		yylhs.value.as< std::shared_ptr<SyntaxVarDef> > ()->InitVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ());
		std::cout<<"VarDef: T_IDENTIFIER ConstIndexList T_ASSIGN InitVal"<<std::endl;
    }
#line 2778 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 26:
#line 296 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()=std::make_shared<SyntaxVarDefList>();
		yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDef> > ()));
		std::cout<<"VarDefList:VarDef"<<std::endl;
    }
#line 2788 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 27:
#line 301 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDef> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxVarDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxVarDefList> > ());
		std::cout<<"VarDefList:VarDefList T_COMMA VarDef "<<std::endl;
    }
#line 2798 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 28:
#line 309 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()=std::make_shared<SyntaxInitVal>();
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()->Exp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ());
	std::cout<<"InitVal:Exp"<<std::endl;
    }
#line 2808 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 29:
#line 314 "Sysy_parser.y" // lalr1.cc:906
    {
	std::cout<<"{}"<<std::endl;
    }
#line 2816 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 30:
#line 317 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()=std::make_shared<SyntaxInitVal>();
	yylhs.value.as< std::shared_ptr<SyntaxInitVal> > ()->InitValList=yystack_[1].value.as< std::shared_ptr<SyntaxInitValList> > ()->list;
	std::cout<<"InitVal: { InitValList }"<<std::endl;
    }
#line 2826 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 31:
#line 325 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()=std::make_shared<SyntaxInitValList>();
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ()));
	std::cout<<"InitValList : InitVal"<<std::endl;
    }
#line 2836 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 32:
#line 330 "Sysy_parser.y" // lalr1.cc:906
    {
	yystack_[2].value.as< std::shared_ptr<SyntaxInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxInitVal> > ()));
	yylhs.value.as< std::shared_ptr<SyntaxInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxInitValList> > ());
	std::cout<<"InitValList T_COMMA InitVal"<<std::endl;
    }
#line 2846 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 33:
#line 338 "Sysy_parser.y" // lalr1.cc:906
    {
	//一维数组
	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()=std::make_shared<SyntaxParamArrayExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ()));
	std::cout<<"One IndexList"<<std::endl;
    }
#line 2857 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 34:
#line 344 "Sysy_parser.y" // lalr1.cc:906
    {
    	//多维数组
		yystack_[3].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ());
		std::cout<<"Muti IndexList"<<std::endl;
    }
#line 2868 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 35:
#line 352 "Sysy_parser.y" // lalr1.cc:906
    {
	//不带参数的返回类型为Void的函数
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
	std::cout<<"Void FuncDef without Param"<<std::endl;
    }
#line 2881 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 36:
#line 360 "Sysy_parser.y" // lalr1.cc:906
    {
	//带有参数的返回值为Void的函数
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[5].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[4].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->FuncFParamList=yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list;
	std::cout<<"Void FuncDef with Param"<<std::endl;
    }
#line 2895 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 37:
#line 369 "Sysy_parser.y" // lalr1.cc:906
    {
    //无参数的返回值为int的函数
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
	std::cout<<"Int FuncDef without Param"<<std::endl;
    }
#line 2908 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 38:
#line 377 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()=std::make_shared<SyntaxFuncDef>();
    yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->type=yystack_[5].value.as< type_specifier > ();
    yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->id=yystack_[4].value.as< std::string > ();
    yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
    yylhs.value.as< std::shared_ptr<SyntaxFuncDef> > ()->FuncFParamList=yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list;
	std::cout<<"Int FuncDef with Param"<<std::endl;
    }
#line 2921 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 39:
#line 387 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_VOID;
    }
#line 2929 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 40:
#line 392 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()=std::make_shared<SyntaxFuncFParamList>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list.emplace_back(yystack_[0].value.as< std::shared_ptr<SyntaxFuncFParam> > ());
    }
#line 2938 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 41:
#line 396 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxFuncFParam> > ()));
    	yylhs.value.as< std::shared_ptr<SyntaxFuncFParamList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxFuncFParamList> > ());
    }
#line 2947 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 42:
#line 403 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[1].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[0].value.as< std::string > ();
	std::cout<<"FuncFParam : BType T_IDENTIFIER"<<std::endl;
    }
#line 2958 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 43:
#line 409 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[3].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[2].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
	std::cout<<"FuncFParam : BType T_IDENTIFIER T_LBRACKET T_RBRACKET"<<std::endl;
    }
#line 2970 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 44:
#line 416 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->ParamArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
	std::cout<<"FuncFParam : BType T_IDENTIFIER T_LBRACKET T_RBRACKET IndexList"<<std::endl;
    }
#line 2983 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 45:
#line 424 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()=std::make_shared<SyntaxFuncFParam>();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->type=yystack_[5].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->id=yystack_[4].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->isarray=true;
	yylhs.value.as< std::shared_ptr<SyntaxFuncFParam> > ()->ParamArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
	std::cout<<"FuncFParam : BType T_IDENTIFIER T_LBRACKET Exp T_RBRACKET IndexList"<<std::endl;
    }
#line 2996 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 46:
#line 434 "Sysy_parser.y" // lalr1.cc:906
    {
	
    }
#line 3004 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 47:
#line 437 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxBlock> > ()=std::make_shared<SyntaxBlock>();
    	yylhs.value.as< std::shared_ptr<SyntaxBlock> > ()->BlockItemList=yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list;
    	std::cout<<"Block"<<std::endl;
    }
#line 3014 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 48:
#line 444 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()=std::make_shared<SyntaxBlockItemList>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlockItem> > ()));
	std::cout<<"BlockItemList : BlockItem "<<std::endl;
    }
#line 3024 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 49:
#line 449 "Sysy_parser.y" // lalr1.cc:906
    {
    yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlockItem> > ()));
    yylhs.value.as< std::shared_ptr<SyntaxBlockItemList> > ()=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxBlockItemList> > ());
	std::cout<<"BlockItemList : BlockItemList BlockItem"<<std::endl;
    }
#line 3034 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 50:
#line 456 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxConstDecl> > ());
	std::cout<<"BlockItem: ConstDecl"<<std::endl;
    }
#line 3044 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 51:
#line 462 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxVarDecl> > ());
	std::cout<<"BlockItem:VarDecl"<<std::endl;
    }
#line 3054 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 52:
#line 467 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()=std::make_shared<SyntaxBlockItem>();
	yylhs.value.as< std::shared_ptr<SyntaxBlockItem> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
	std::cout<<"BlockItem:Stmt"<<std::endl;
    }
#line 3064 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 53:
#line 475 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->BreakStmt=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxBreakStmt> > ());
	std::cout<<"Stmt:break"<<std::endl;
    }
#line 3074 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 54:
#line 480 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->ContinueStmt=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxContinueStmt> > ());
		std::cout<<"Stmt:Continue"<<std::endl;
    }
#line 3084 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 55:
#line 485 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->AssignStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAssignStmt> > ());
		std::cout<<"Stmt:AssignStmt"<<std::endl;
    }
#line 3094 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 56:
#line 490 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
		yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
		std::cout<<"Stmt:Exp T_SEMICOLIN"<<std::endl;
    }
#line 3104 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 57:
#line 495 "Sysy_parser.y" // lalr1.cc:906
    {
    }
#line 3111 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 58:
#line 497 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
		yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxBlock> > ());
		std::cout<<"Stmt: Block"<<std::endl;
    }
#line 3121 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 59:
#line 502 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
		yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->SelectStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxSelectStmt> > ());
		std::cout<<"SelectStmt"<<std::endl;
    }
#line 3131 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 60:
#line 507 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
		yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->IterationStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxIterationStmt> > ());
		std::cout<<"IterationStmt"<<std::endl;
    }
#line 3141 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 61:
#line 512 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()=std::make_shared<SyntaxStmt>();
		yylhs.value.as< std::shared_ptr<SyntaxStmt> > ()->ReturnStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxReturnStmt> > ());
		std::cout<<"ReturnStmt"<<std::endl;
    }
#line 3151 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 62:
#line 519 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxBreakStmt> > ()=std::make_shared<SyntaxBreakStmt>();
    }
#line 3159 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 63:
#line 523 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxContinueStmt> > ()=std::make_shared<SyntaxContinueStmt>();
    }
#line 3167 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 64:
#line 527 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAssignStmt> > ()=std::make_shared<SyntaxAssignStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxAssignStmt> > ()->LVal=std::move(yystack_[3].value.as< std::shared_ptr<SyntaxLVal> > ());
    }
#line 3176 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 65:
#line 533 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()=std::make_shared<SyntaxSelectStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxCond> > ());
	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->ifStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3186 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 66:
#line 538 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()=std::make_shared<SyntaxSelectStmt>();
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->Cond=std::move(yystack_[4].value.as< std::shared_ptr<SyntaxCond> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->ifStmt=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxStmt> > ());
    	yylhs.value.as< std::shared_ptr<SyntaxSelectStmt> > ()->elseStmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3197 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 67:
#line 546 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()=std::make_shared<SyntaxIterationStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxCond> > ());
	yylhs.value.as< std::shared_ptr<SyntaxIterationStmt> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxStmt> > ());
    }
#line 3207 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 68:
#line 552 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()=std::make_shared<SyntaxReturnStmt>();
    }
#line 3215 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 69:
#line 555 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()=std::make_shared<SyntaxReturnStmt>();
	yylhs.value.as< std::shared_ptr<SyntaxReturnStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
    }
#line 3224 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 70:
#line 561 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxExp> > ()=std::make_shared<SyntaxExp>();
	yylhs.value.as< std::shared_ptr<SyntaxExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	std::cout<<"Exp : AddExp"<<std::endl;
    }
#line 3234 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 71:
#line 568 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCond> > ()=std::make_shared<SyntaxCond>();
	yylhs.value.as< std::shared_ptr<SyntaxCond> > ()->LOrExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLOrExp> > ());
	std::cout<<"Cond : LOrExp"<<std::endl;
    }
#line 3244 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 72:
#line 575 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()=std::make_shared<SyntaxLVal>();
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->id=yystack_[0].value.as< std::string > ();
	std::cout<<"LVal:Ident"<<std::endl;
    }
#line 3254 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 73:
#line 580 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()=std::make_shared<SyntaxLVal>();
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->id=yystack_[1].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxLVal> > ()->ArrayExpList=yystack_[0].value.as< std::shared_ptr<SyntaxParamArrayExpList> > ()->list;
	std::cout<<"LVal:T_IDENTIFIER IndexList"<<std::endl;
    }
#line 3265 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 74:
#line 588 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<SyntaxExp> > ());
	std::cout<<"PrimaryExp:(Exp)"<<std::endl;
    }
#line 3275 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 75:
#line 593 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->LVal=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLVal> > ());
    std::cout<<"PrimaryExp：LVal"<<std::endl;
	}
#line 3285 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 76:
#line 598 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()=std::make_shared<SyntaxPrimaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxPrimaryExp> > ()->Number=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxNumber> > ());
    std::cout<<"PrimaryExp：Number"<<std::endl;
	}
#line 3295 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 77:
#line 605 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxNumber> > ()=std::make_shared<SyntaxNumber>();
	yylhs.value.as< std::shared_ptr<SyntaxNumber> > ()->num=yystack_[0].value.as< int > ();
    std::cout<<"Numbers"<<std::endl;
	}
#line 3305 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 78:
#line 613 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->PrimaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxPrimaryExp> > ());
	std::cout<<"UnaryExp:PrimaryExp"<<std::endl;
    }
#line 3315 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 79:
#line 618 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->Callee=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxCallee> > ());
	std::cout<<"UnaryExp:Callee"<<std::endl;
    }
#line 3325 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 80:
#line 623 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()=std::make_shared<SyntaxUnaryExp>();
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxUnaryExp> > ()->op=yystack_[1].value.as< unaryop > ();
    std::cout<<"UnaryExp:UnaryOp UnaryExp "<<std::endl;
	}
#line 3336 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 81:
#line 631 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()=std::make_shared<SyntaxCallee>();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->id=yystack_[2].value.as< std::string > ();
    }
#line 3345 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 82:
#line 635 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()=std::make_shared<SyntaxCallee>();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<SyntaxCallee> > ()->ExpList=yystack_[1].value.as< std::shared_ptr<SyntaxExpList> > ()->list;
	}
#line 3355 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 83:
#line 643 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< unaryop > ()=OP_POS;
	std::cout<<"+"<<std::endl;
    }
#line 3364 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 84:
#line 647 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< unaryop > ()=OP_NEG;
    std::cout<<"-"<<std::endl;
	}
#line 3373 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 85:
#line 651 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< unaryop > ()=OP_NOT;
    std::cout<<"！"<<std::endl;
	}
#line 3382 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 86:
#line 657 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()=std::make_shared<SyntaxExpList>();
	yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ()));
    std::cout<<"FuncRParams : Exp "<<std::endl;
	}
#line 3392 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 87:
#line 662 "Sysy_parser.y" // lalr1.cc:906
    {
    yystack_[2].value.as< std::shared_ptr<SyntaxExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<SyntaxExp> > ()));
    yylhs.value.as< std::shared_ptr<SyntaxExpList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxExpList> > ());
    std::cout<<"FuncRParams :Exp,Exp"<<std::endl;
	}
#line 3402 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 88:
#line 669 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	std::cout<<"MulExp : UnaryExp"<<std::endl;
    }
#line 3412 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 89:
#line 674 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_MUL;
	std::cout<<"MulExp : MulExp T_MUL UnaryExp"<<std::endl;
    }
#line 3424 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 90:
#line 681 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_DIV;
	std::cout<<"MulExp : MulExp T_DIV UnaryExp"<<std::endl;
    }
#line 3436 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 91:
#line 688 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()=std::make_shared<SyntaxMulExp>();
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxMulExp> > ()->op=OP_MOD;
	std::cout<<"MulExp :MulExp T_MOD UnaryExp"<<std::endl;
    }
#line 3448 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 92:
#line 697 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
    //std::cout<<""<<std::endl;
	}
#line 3458 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 93:
#line 702 "Sysy_parser.y" // lalr1.cc:906
    {
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxAddExp> > ());
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
   	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->op=OP_PLUS;
	//std::cout<<""<<std::endl;
    }
#line 3470 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 94:
#line 709 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()=std::make_shared<SyntaxAddExp>();
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxMulExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxAddExp> > ()->op=OP_MINUS;
	//std::cout<<""<<std::endl;
    }
#line 3482 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 95:
#line 718 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	std::cout<<"RelExp : AddExp	"<<std::endl;
    }
#line 3492 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 96:
#line 723 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_LT;
	std::cout<<"RelExp : RelExp T_LT AddExp	"<<std::endl;
    }
#line 3504 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 97:
#line 730 "Sysy_parser.y" // lalr1.cc:906
    {
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
  	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_GT;
	std::cout<<"RelExp : RelExp T_GT AddExp"<<std::endl;
    }
#line 3516 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 98:
#line 737 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_LTE;
	std::cout<<"RelExp : RelExp T_LTE AddExp"<<std::endl;
    }
#line 3528 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 99:
#line 744 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()=std::make_shared<SyntaxRelExp>();
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxRelExp> > ()->op=OP_GTE;
	std::cout<<"RelExp : RelExp T_GTE AddExp"<<std::endl;
    }
#line 3540 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 100:
#line 753 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
	std::cout<<"EqExp : RelExp"<<std::endl;
    }
#line 3550 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 101:
#line 758 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxEqExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->op=OP_EQ;
	std::cout<<"EqExp : EqExp T_EQ RelExp"<<std::endl;
    }
#line 3562 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 102:
#line 765 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()=std::make_shared<SyntaxEqExp>();
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxEqExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxRelExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxEqExp> > ()->op=OP_NEQ;
	std::cout<<"EqExp : EqExp T_NEQ RelExp"<<std::endl;
    }
#line 3574 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 103:
#line 774 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()=std::make_shared<SyntaxLAndExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxEqExp> > ());
	std::cout<<"LAndExp : EqExp"<<std::endl;
    }
#line 3584 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 104:
#line 779 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()=std::make_shared<SyntaxLAndExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->LAndExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxLAndExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxEqExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLAndExp> > ()->op=OP_AND;
	std::cout<<"LAndExp : LAndExp T_AND EqExp"<<std::endl;
    }
#line 3596 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 105:
#line 788 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()=std::make_shared<SyntaxLOrExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLAndExp> > ());
	std::cout<<"LOrExp : LAndExp"<<std::endl;
    }
#line 3606 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 106:
#line 793 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()=std::make_shared<SyntaxLOrExp>();
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LOrExp=std::move(yystack_[2].value.as< std::shared_ptr<SyntaxLOrExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxLAndExp> > ());
	yylhs.value.as< std::shared_ptr<SyntaxLOrExp> > ()->op=OP_OR;
	std::cout<<"LOrExp : LOrExp T_OR LAndExp"<<std::endl;
    }
#line 3618 "./build/sysy_parser.cc" // lalr1.cc:906
    break;

  case 107:
#line 802 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<SyntaxConstExp> > ()=std::make_shared<SyntaxConstExp>();
	yylhs.value.as< std::shared_ptr<SyntaxConstExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<SyntaxAddExp> > ());
	std::cout<<"ConstExp : AddExp"<<std::endl;
    }
#line 3628 "./build/sysy_parser.cc" // lalr1.cc:906
    break;


#line 3632 "./build/sysy_parser.cc" // lalr1.cc:906
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
      31,    40,  -144,  -144,  -144,    44,  -144,   108,    21,    27,
     121,  -144,    92,     9,   225,    83,  -144,    51,    75,   214,
      93,  -144,    40,  -144,  -144,   225,   191,    82,  -144,  -144,
    -144,  -144,  -144,  -144,  -144,  -144,  -144,   225,    23,   172,
      89,    74,   112,  -144,   172,   109,    92,   225,   106,  -144,
      89,   137,   193,  -144,  -144,   214,  -144,   133,  -144,  -144,
      -5,    87,   225,   139,  -144,   225,   225,   225,   225,   225,
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
       0,    13,    39,     0,     0,     2,     5,     0,     6,     7,
       0,     0,     1,     4,     3,    22,    26,     0,     0,     0,
       0,     9,     0,     0,     0,    24,    21,     0,     0,     0,
       0,     8,     0,    83,    84,     0,     0,    72,    77,    85,
      23,    28,    75,    78,    76,    88,    79,     0,    92,    70,
       0,     0,     0,    40,   107,     0,     0,     0,    22,    27,
       0,     0,     0,    14,    18,     0,    10,     0,    29,    31,
       0,     0,     0,    73,    80,     0,     0,     0,     0,     0,
       0,    37,    42,     0,     0,    11,    25,     0,    35,     0,
      19,     0,    16,    15,    74,     0,    30,    81,    86,     0,
       0,     0,    89,    90,    91,    93,    94,    57,    46,     0,
       0,     0,    62,    63,    50,     0,    51,    58,     0,    48,
      52,     0,     0,    55,    59,    60,    61,     0,    75,     0,
      41,    38,    12,    36,     0,    20,    32,     0,    82,    33,
       0,     0,    68,     0,     0,    47,    49,    53,    54,    56,
       0,    43,     0,    17,    87,    34,     0,    95,   100,   103,
     105,    71,    69,     0,     0,    44,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    64,    45,    65,
      96,    98,    97,    99,   101,   102,   104,   106,    67,     0,
      66
  };

  const short
  sysy_parser::yypgoto_[] =
  {
    -144,  -144,   232,   -64,  -144,   220,     3,   209,  -144,   -53,
     -63,   215,  -144,   -34,  -144,  -143,  -144,  -144,   219,   165,
     -40,  -144,   125,  -142,  -144,  -144,  -144,  -144,  -144,  -144,
     -21,   107,   -76,  -144,  -144,    -8,  -144,  -144,  -144,   105,
     -24,    33,    76,    79,  -144,     0
  };

  const short
  sysy_parser::yydefgoto_[] =
  {
      -1,     4,     5,     6,    20,    25,    51,    21,    91,    63,
       8,    16,    17,    40,    70,    73,     9,    10,    52,    53,
     117,   118,   119,   120,   121,   122,   123,   124,   125,   126,
     127,   156,    42,    43,    44,    45,    46,    47,    99,    48,
      49,   158,   159,   160,   161,    64
  };

  const unsigned char
  sysy_parser::yytable_[] =
  {
      54,    41,    69,     7,   128,    54,    11,     7,   165,    92,
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
       0,    27,    28,    38,    45,    46,    47,    50,    54,    60,
      61,    50,     0,     3,    46,    31,    55,    56,    31,    31,
      48,    51,    16,    19,    21,    49,    17,    18,    19,    16,
      49,    17,    18,     5,     6,    19,    23,    31,    32,    41,
      57,    74,    76,    77,    78,    79,    80,    81,    83,    84,
      20,    50,    62,    63,    84,    89,    16,    21,    31,    55,
      20,    62,    23,    53,    89,    16,    51,    74,    24,    57,
      58,    19,    21,    59,    79,     7,     8,     9,     5,     6,
      23,    64,    31,    18,    20,    22,    57,    89,    64,    20,
      24,    52,    53,    53,    20,    18,    24,    20,    74,    82,
      74,    21,    79,    79,    79,    83,    83,    17,    24,    26,
      29,    30,    39,    40,    47,    50,    54,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    76,    21,
      63,    64,    22,    64,    18,    24,    57,    18,    20,    22,
      74,    19,    17,    74,    19,    24,    66,    17,    17,    17,
      16,    22,    74,    53,    74,    22,    75,    84,    85,    86,
      87,    88,    17,    75,    74,    59,    22,    20,    10,    11,
      12,    13,    14,    15,    42,    43,    20,    17,    59,    67,
      84,    84,    84,    84,    85,    85,    86,    87,    67,    25,
      67
  };

  const unsigned char
  sysy_parser::yyr1_[] =
  {
       0,    44,    45,    45,    45,    46,    46,    46,    47,    48,
      48,    49,    49,    50,    51,    51,    52,    52,    53,    53,
      53,    54,    55,    55,    55,    55,    56,    56,    57,    57,
      57,    58,    58,    59,    59,    60,    60,    60,    60,    61,
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
       0,     2,     1,     2,     2,     1,     1,     1,     4,     1,
       3,     3,     4,     1,     3,     4,     1,     3,     1,     2,
       3,     3,     1,     3,     2,     4,     1,     3,     1,     2,
       3,     1,     3,     3,     4,     5,     6,     5,     6,     1,
       1,     3,     2,     4,     5,     6,     2,     3,     1,     2,
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
  "$end", "error", "$undefined", "T_END", "T_ERROR", "T_ADD", "T_SUB",
  "T_MUL", "T_DIV", "T_MOD", "T_LT", "T_LTE", "T_GT", "T_GTE", "T_EQ",
  "T_NEQ", "T_ASSIGN", "T_SEMICOLIN", "T_COMMA", "T_LPARENTHESE",
  "T_RPARENTHESE", "T_LBRACKET", "T_RBRACKET", "T_LBRACE", "T_RBRACE",
  "T_ELSE", "T_IF", "T_INT", "T_VOID", "T_RETURN", "T_WHILE",
  "T_IDENTIFIER", "T_NUMBER", "T_ARRAY", "T_LETTER", "T_EOL", "T_COMMENT",
  "T_BLANK", "T_CONST", "T_BREAK", "T_CONTINUE", "T_NOT", "T_AND", "T_OR",
  "$accept", "CompUnit", "DeclDef", "ConstDecl", "ConstDefList",
  "ConstIndexList", "BType", "ConstDef", "ConstInitValList",
  "ConstInitVal", "VarDecl", "VarDef", "VarDefList", "InitVal",
  "InitValList", "IndexList", "FuncDef", "FuncType", "FuncFParams",
  "FuncFParam", "Block", "BlockItemList", "BlockItem", "Stmt", "BreakStmt",
  "ContinueStmt", "AssignStmt", "SelectStmt", "IterationStmt",
  "ReturnStmt", "Exp", "Cond", "LVal", "PrimaryExp", "Number", "UnaryExp",
  "Callee", "UnaryOp", "FuncRParams", "MulExp", "AddExp", "RelExp",
  "EqExp", "LAndExp", "LOrExp", "ConstExp", YY_NULLPTR
  };


  const unsigned short
  sysy_parser::yyrline_[] =
  {
       0,   137,   137,   144,   151,   158,   163,   168,   175,   184,
     189,   196,   201,   209,   215,   221,   231,   236,   244,   249,
     252,   260,   268,   273,   279,   286,   296,   301,   309,   314,
     317,   325,   330,   338,   344,   352,   360,   369,   377,   387,
     392,   396,   403,   409,   416,   424,   434,   437,   444,   449,
     456,   462,   467,   475,   480,   485,   490,   495,   497,   502,
     507,   512,   519,   523,   527,   533,   538,   546,   552,   555,
     561,   568,   575,   580,   588,   593,   598,   605,   613,   618,
     623,   631,   635,   643,   647,   651,   657,   662,   669,   674,
     681,   688,   697,   702,   709,   718,   723,   730,   737,   744,
     753,   758,   765,   774,   779,   788,   793,   802
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
#line 4118 "./build/sysy_parser.cc" // lalr1.cc:1217
#line 809 "Sysy_parser.y" // lalr1.cc:1218

//void yy::sysy_parser::error (const std::string& m){
//	std::cerr << "Find error in parsering, " << m<< "\n";
//}
void yy::sysy_parser::error (const location_type& l, const std::string& m){
	std::cerr << l << "\n";
	std::cerr << "Find error in parsering, " << m<< "\n";
}
