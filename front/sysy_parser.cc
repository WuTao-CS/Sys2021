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

std::shared_ptr<TreeNodeCompUnit> rootFromParser;

#line 52 "./front/sysy_parser.cc" // lalr1.cc:431

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
#line 151 "./front/sysy_parser.cc" // lalr1.cc:512

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

      case 83: // AddExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeAddExp> > (YY_MOVE (other.value));
        break;

      case 50: // ArrayConstExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeArrayConstExpList> > (YY_MOVE (other.value));
        break;

      case 75: // ArrayExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeArrayExpList> > (YY_MOVE (other.value));
        break;

      case 68: // AssignStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeAssignStmt> > (YY_MOVE (other.value));
        break;

      case 62: // Block
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlock> > (YY_MOVE (other.value));
        break;

      case 64: // BlockItem
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlockItem> > (YY_MOVE (other.value));
        break;

      case 63: // BlockItemList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlockItemList> > (YY_MOVE (other.value));
        break;

      case 66: // BreakStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBreakStmt> > (YY_MOVE (other.value));
        break;

      case 79: // Callee
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCallee> > (YY_MOVE (other.value));
        break;

      case 45: // CompUnit
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCompUnit> > (YY_MOVE (other.value));
        break;

      case 73: // Cond
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCond> > (YY_MOVE (other.value));
        break;

      case 47: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDecl> > (YY_MOVE (other.value));
        break;

      case 49: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDef> > (YY_MOVE (other.value));
        break;

      case 48: // ConstDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDefList> > (YY_MOVE (other.value));
        break;

      case 88: // ConstExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstExp> > (YY_MOVE (other.value));
        break;

      case 51: // ConstInitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstInitVal> > (YY_MOVE (other.value));
        break;

      case 52: // ConstInitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstInitValList> > (YY_MOVE (other.value));
        break;

      case 67: // ContinueStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeContinueStmt> > (YY_MOVE (other.value));
        break;

      case 46: // DeclDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeDeclDef> > (YY_MOVE (other.value));
        break;

      case 85: // EqExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeEqExp> > (YY_MOVE (other.value));
        break;

      case 72: // Exp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeExp> > (YY_MOVE (other.value));
        break;

      case 81: // FuncRParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeExpList> > (YY_MOVE (other.value));
        break;

      case 58: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncDef> > (YY_MOVE (other.value));
        break;

      case 60: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncFParam> > (YY_MOVE (other.value));
        break;

      case 59: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncFParamList> > (YY_MOVE (other.value));
        break;

      case 56: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeInitVal> > (YY_MOVE (other.value));
        break;

      case 57: // InitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeInitValList> > (YY_MOVE (other.value));
        break;

      case 70: // IterationStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeIterationStmt> > (YY_MOVE (other.value));
        break;

      case 86: // LAndExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLAndExp> > (YY_MOVE (other.value));
        break;

      case 87: // LOrExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLOrExp> > (YY_MOVE (other.value));
        break;

      case 74: // LVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLVal> > (YY_MOVE (other.value));
        break;

      case 82: // MulExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeMulExp> > (YY_MOVE (other.value));
        break;

      case 77: // Number
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeNumber> > (YY_MOVE (other.value));
        break;

      case 61: // ParamArrayExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeParamArrayExpList> > (YY_MOVE (other.value));
        break;

      case 76: // PrimaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodePrimaryExp> > (YY_MOVE (other.value));
        break;

      case 84: // RelExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeRelExp> > (YY_MOVE (other.value));
        break;

      case 71: // ReturnStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeReturnStmt> > (YY_MOVE (other.value));
        break;

      case 69: // SelectStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeSelectStmt> > (YY_MOVE (other.value));
        break;

      case 65: // Stmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeStmt> > (YY_MOVE (other.value));
        break;

      case 78: // UnaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeUnaryExp> > (YY_MOVE (other.value));
        break;

      case 53: // VarDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDecl> > (YY_MOVE (other.value));
        break;

      case 55: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDef> > (YY_MOVE (other.value));
        break;

      case 54: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDefList> > (YY_MOVE (other.value));
        break;

      case 31: // T_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (other.value));
        break;

      case 89: // FuncType
        value.YY_MOVE_OR_COPY< type_specifier > (YY_MOVE (other.value));
        break;

      case 80: // UnaryOp
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
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeAddExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeArrayConstExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeArrayExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeAssignStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeBlock>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeBlockItem>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeBlockItemList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeBreakStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeCallee>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeCompUnit>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeCond>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstDecl>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstDefList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstInitVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeConstInitValList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeContinueStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeDeclDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeEqExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeFuncDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeFuncFParam>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeFuncFParamList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeInitVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeInitValList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeIterationStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeLAndExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeLOrExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeLVal>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeMulExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeNumber>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeParamArrayExpList>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodePrimaryExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeRelExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeReturnStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeSelectStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeStmt>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeUnaryExp>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeVarDecl>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeVarDef>) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<TreeNodeVarDefList>) v, YY_RVREF (location_type) l)
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

      case 83: // AddExp
        value.template destroy< std::shared_ptr<TreeNodeAddExp> > ();
        break;

      case 50: // ArrayConstExpList
        value.template destroy< std::shared_ptr<TreeNodeArrayConstExpList> > ();
        break;

      case 75: // ArrayExpList
        value.template destroy< std::shared_ptr<TreeNodeArrayExpList> > ();
        break;

      case 68: // AssignStmt
        value.template destroy< std::shared_ptr<TreeNodeAssignStmt> > ();
        break;

      case 62: // Block
        value.template destroy< std::shared_ptr<TreeNodeBlock> > ();
        break;

      case 64: // BlockItem
        value.template destroy< std::shared_ptr<TreeNodeBlockItem> > ();
        break;

      case 63: // BlockItemList
        value.template destroy< std::shared_ptr<TreeNodeBlockItemList> > ();
        break;

      case 66: // BreakStmt
        value.template destroy< std::shared_ptr<TreeNodeBreakStmt> > ();
        break;

      case 79: // Callee
        value.template destroy< std::shared_ptr<TreeNodeCallee> > ();
        break;

      case 45: // CompUnit
        value.template destroy< std::shared_ptr<TreeNodeCompUnit> > ();
        break;

      case 73: // Cond
        value.template destroy< std::shared_ptr<TreeNodeCond> > ();
        break;

      case 47: // ConstDecl
        value.template destroy< std::shared_ptr<TreeNodeConstDecl> > ();
        break;

      case 49: // ConstDef
        value.template destroy< std::shared_ptr<TreeNodeConstDef> > ();
        break;

      case 48: // ConstDefList
        value.template destroy< std::shared_ptr<TreeNodeConstDefList> > ();
        break;

      case 88: // ConstExp
        value.template destroy< std::shared_ptr<TreeNodeConstExp> > ();
        break;

      case 51: // ConstInitVal
        value.template destroy< std::shared_ptr<TreeNodeConstInitVal> > ();
        break;

      case 52: // ConstInitValList
        value.template destroy< std::shared_ptr<TreeNodeConstInitValList> > ();
        break;

      case 67: // ContinueStmt
        value.template destroy< std::shared_ptr<TreeNodeContinueStmt> > ();
        break;

      case 46: // DeclDef
        value.template destroy< std::shared_ptr<TreeNodeDeclDef> > ();
        break;

      case 85: // EqExp
        value.template destroy< std::shared_ptr<TreeNodeEqExp> > ();
        break;

      case 72: // Exp
        value.template destroy< std::shared_ptr<TreeNodeExp> > ();
        break;

      case 81: // FuncRParams
        value.template destroy< std::shared_ptr<TreeNodeExpList> > ();
        break;

      case 58: // FuncDef
        value.template destroy< std::shared_ptr<TreeNodeFuncDef> > ();
        break;

      case 60: // FuncFParam
        value.template destroy< std::shared_ptr<TreeNodeFuncFParam> > ();
        break;

      case 59: // FuncFParams
        value.template destroy< std::shared_ptr<TreeNodeFuncFParamList> > ();
        break;

      case 56: // InitVal
        value.template destroy< std::shared_ptr<TreeNodeInitVal> > ();
        break;

      case 57: // InitValList
        value.template destroy< std::shared_ptr<TreeNodeInitValList> > ();
        break;

      case 70: // IterationStmt
        value.template destroy< std::shared_ptr<TreeNodeIterationStmt> > ();
        break;

      case 86: // LAndExp
        value.template destroy< std::shared_ptr<TreeNodeLAndExp> > ();
        break;

      case 87: // LOrExp
        value.template destroy< std::shared_ptr<TreeNodeLOrExp> > ();
        break;

      case 74: // LVal
        value.template destroy< std::shared_ptr<TreeNodeLVal> > ();
        break;

      case 82: // MulExp
        value.template destroy< std::shared_ptr<TreeNodeMulExp> > ();
        break;

      case 77: // Number
        value.template destroy< std::shared_ptr<TreeNodeNumber> > ();
        break;

      case 61: // ParamArrayExpList
        value.template destroy< std::shared_ptr<TreeNodeParamArrayExpList> > ();
        break;

      case 76: // PrimaryExp
        value.template destroy< std::shared_ptr<TreeNodePrimaryExp> > ();
        break;

      case 84: // RelExp
        value.template destroy< std::shared_ptr<TreeNodeRelExp> > ();
        break;

      case 71: // ReturnStmt
        value.template destroy< std::shared_ptr<TreeNodeReturnStmt> > ();
        break;

      case 69: // SelectStmt
        value.template destroy< std::shared_ptr<TreeNodeSelectStmt> > ();
        break;

      case 65: // Stmt
        value.template destroy< std::shared_ptr<TreeNodeStmt> > ();
        break;

      case 78: // UnaryExp
        value.template destroy< std::shared_ptr<TreeNodeUnaryExp> > ();
        break;

      case 53: // VarDecl
        value.template destroy< std::shared_ptr<TreeNodeVarDecl> > ();
        break;

      case 55: // VarDef
        value.template destroy< std::shared_ptr<TreeNodeVarDef> > ();
        break;

      case 54: // VarDefList
        value.template destroy< std::shared_ptr<TreeNodeVarDefList> > ();
        break;

      case 31: // T_IDENTIFIER
        value.template destroy< std::string > ();
        break;

      case 89: // FuncType
        value.template destroy< type_specifier > ();
        break;

      case 80: // UnaryOp
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

      case 83: // AddExp
        value.move< std::shared_ptr<TreeNodeAddExp> > (YY_MOVE (s.value));
        break;

      case 50: // ArrayConstExpList
        value.move< std::shared_ptr<TreeNodeArrayConstExpList> > (YY_MOVE (s.value));
        break;

      case 75: // ArrayExpList
        value.move< std::shared_ptr<TreeNodeArrayExpList> > (YY_MOVE (s.value));
        break;

      case 68: // AssignStmt
        value.move< std::shared_ptr<TreeNodeAssignStmt> > (YY_MOVE (s.value));
        break;

      case 62: // Block
        value.move< std::shared_ptr<TreeNodeBlock> > (YY_MOVE (s.value));
        break;

      case 64: // BlockItem
        value.move< std::shared_ptr<TreeNodeBlockItem> > (YY_MOVE (s.value));
        break;

      case 63: // BlockItemList
        value.move< std::shared_ptr<TreeNodeBlockItemList> > (YY_MOVE (s.value));
        break;

      case 66: // BreakStmt
        value.move< std::shared_ptr<TreeNodeBreakStmt> > (YY_MOVE (s.value));
        break;

      case 79: // Callee
        value.move< std::shared_ptr<TreeNodeCallee> > (YY_MOVE (s.value));
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<TreeNodeCompUnit> > (YY_MOVE (s.value));
        break;

      case 73: // Cond
        value.move< std::shared_ptr<TreeNodeCond> > (YY_MOVE (s.value));
        break;

      case 47: // ConstDecl
        value.move< std::shared_ptr<TreeNodeConstDecl> > (YY_MOVE (s.value));
        break;

      case 49: // ConstDef
        value.move< std::shared_ptr<TreeNodeConstDef> > (YY_MOVE (s.value));
        break;

      case 48: // ConstDefList
        value.move< std::shared_ptr<TreeNodeConstDefList> > (YY_MOVE (s.value));
        break;

      case 88: // ConstExp
        value.move< std::shared_ptr<TreeNodeConstExp> > (YY_MOVE (s.value));
        break;

      case 51: // ConstInitVal
        value.move< std::shared_ptr<TreeNodeConstInitVal> > (YY_MOVE (s.value));
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<TreeNodeConstInitValList> > (YY_MOVE (s.value));
        break;

      case 67: // ContinueStmt
        value.move< std::shared_ptr<TreeNodeContinueStmt> > (YY_MOVE (s.value));
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<TreeNodeDeclDef> > (YY_MOVE (s.value));
        break;

      case 85: // EqExp
        value.move< std::shared_ptr<TreeNodeEqExp> > (YY_MOVE (s.value));
        break;

      case 72: // Exp
        value.move< std::shared_ptr<TreeNodeExp> > (YY_MOVE (s.value));
        break;

      case 81: // FuncRParams
        value.move< std::shared_ptr<TreeNodeExpList> > (YY_MOVE (s.value));
        break;

      case 58: // FuncDef
        value.move< std::shared_ptr<TreeNodeFuncDef> > (YY_MOVE (s.value));
        break;

      case 60: // FuncFParam
        value.move< std::shared_ptr<TreeNodeFuncFParam> > (YY_MOVE (s.value));
        break;

      case 59: // FuncFParams
        value.move< std::shared_ptr<TreeNodeFuncFParamList> > (YY_MOVE (s.value));
        break;

      case 56: // InitVal
        value.move< std::shared_ptr<TreeNodeInitVal> > (YY_MOVE (s.value));
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<TreeNodeInitValList> > (YY_MOVE (s.value));
        break;

      case 70: // IterationStmt
        value.move< std::shared_ptr<TreeNodeIterationStmt> > (YY_MOVE (s.value));
        break;

      case 86: // LAndExp
        value.move< std::shared_ptr<TreeNodeLAndExp> > (YY_MOVE (s.value));
        break;

      case 87: // LOrExp
        value.move< std::shared_ptr<TreeNodeLOrExp> > (YY_MOVE (s.value));
        break;

      case 74: // LVal
        value.move< std::shared_ptr<TreeNodeLVal> > (YY_MOVE (s.value));
        break;

      case 82: // MulExp
        value.move< std::shared_ptr<TreeNodeMulExp> > (YY_MOVE (s.value));
        break;

      case 77: // Number
        value.move< std::shared_ptr<TreeNodeNumber> > (YY_MOVE (s.value));
        break;

      case 61: // ParamArrayExpList
        value.move< std::shared_ptr<TreeNodeParamArrayExpList> > (YY_MOVE (s.value));
        break;

      case 76: // PrimaryExp
        value.move< std::shared_ptr<TreeNodePrimaryExp> > (YY_MOVE (s.value));
        break;

      case 84: // RelExp
        value.move< std::shared_ptr<TreeNodeRelExp> > (YY_MOVE (s.value));
        break;

      case 71: // ReturnStmt
        value.move< std::shared_ptr<TreeNodeReturnStmt> > (YY_MOVE (s.value));
        break;

      case 69: // SelectStmt
        value.move< std::shared_ptr<TreeNodeSelectStmt> > (YY_MOVE (s.value));
        break;

      case 65: // Stmt
        value.move< std::shared_ptr<TreeNodeStmt> > (YY_MOVE (s.value));
        break;

      case 78: // UnaryExp
        value.move< std::shared_ptr<TreeNodeUnaryExp> > (YY_MOVE (s.value));
        break;

      case 53: // VarDecl
        value.move< std::shared_ptr<TreeNodeVarDecl> > (YY_MOVE (s.value));
        break;

      case 55: // VarDef
        value.move< std::shared_ptr<TreeNodeVarDef> > (YY_MOVE (s.value));
        break;

      case 54: // VarDefList
        value.move< std::shared_ptr<TreeNodeVarDefList> > (YY_MOVE (s.value));
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (YY_MOVE (s.value));
        break;

      case 89: // FuncType
        value.move< type_specifier > (YY_MOVE (s.value));
        break;

      case 80: // UnaryOp
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

      case 83: // AddExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeAddExp> > (YY_MOVE (that.value));
        break;

      case 50: // ArrayConstExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeArrayConstExpList> > (YY_MOVE (that.value));
        break;

      case 75: // ArrayExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeArrayExpList> > (YY_MOVE (that.value));
        break;

      case 68: // AssignStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeAssignStmt> > (YY_MOVE (that.value));
        break;

      case 62: // Block
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlock> > (YY_MOVE (that.value));
        break;

      case 64: // BlockItem
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlockItem> > (YY_MOVE (that.value));
        break;

      case 63: // BlockItemList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBlockItemList> > (YY_MOVE (that.value));
        break;

      case 66: // BreakStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeBreakStmt> > (YY_MOVE (that.value));
        break;

      case 79: // Callee
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCallee> > (YY_MOVE (that.value));
        break;

      case 45: // CompUnit
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCompUnit> > (YY_MOVE (that.value));
        break;

      case 73: // Cond
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeCond> > (YY_MOVE (that.value));
        break;

      case 47: // ConstDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDecl> > (YY_MOVE (that.value));
        break;

      case 49: // ConstDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDef> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstDefList> > (YY_MOVE (that.value));
        break;

      case 88: // ConstExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstExp> > (YY_MOVE (that.value));
        break;

      case 51: // ConstInitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstInitVal> > (YY_MOVE (that.value));
        break;

      case 52: // ConstInitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeConstInitValList> > (YY_MOVE (that.value));
        break;

      case 67: // ContinueStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeContinueStmt> > (YY_MOVE (that.value));
        break;

      case 46: // DeclDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeDeclDef> > (YY_MOVE (that.value));
        break;

      case 85: // EqExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeEqExp> > (YY_MOVE (that.value));
        break;

      case 72: // Exp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeExp> > (YY_MOVE (that.value));
        break;

      case 81: // FuncRParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeExpList> > (YY_MOVE (that.value));
        break;

      case 58: // FuncDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncDef> > (YY_MOVE (that.value));
        break;

      case 60: // FuncFParam
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncFParam> > (YY_MOVE (that.value));
        break;

      case 59: // FuncFParams
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 56: // InitVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeInitVal> > (YY_MOVE (that.value));
        break;

      case 57: // InitValList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeInitValList> > (YY_MOVE (that.value));
        break;

      case 70: // IterationStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeIterationStmt> > (YY_MOVE (that.value));
        break;

      case 86: // LAndExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLAndExp> > (YY_MOVE (that.value));
        break;

      case 87: // LOrExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLOrExp> > (YY_MOVE (that.value));
        break;

      case 74: // LVal
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeLVal> > (YY_MOVE (that.value));
        break;

      case 82: // MulExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeMulExp> > (YY_MOVE (that.value));
        break;

      case 77: // Number
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeNumber> > (YY_MOVE (that.value));
        break;

      case 61: // ParamArrayExpList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeParamArrayExpList> > (YY_MOVE (that.value));
        break;

      case 76: // PrimaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodePrimaryExp> > (YY_MOVE (that.value));
        break;

      case 84: // RelExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeRelExp> > (YY_MOVE (that.value));
        break;

      case 71: // ReturnStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeReturnStmt> > (YY_MOVE (that.value));
        break;

      case 69: // SelectStmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeSelectStmt> > (YY_MOVE (that.value));
        break;

      case 65: // Stmt
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeStmt> > (YY_MOVE (that.value));
        break;

      case 78: // UnaryExp
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeUnaryExp> > (YY_MOVE (that.value));
        break;

      case 53: // VarDecl
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDecl> > (YY_MOVE (that.value));
        break;

      case 55: // VarDef
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDef> > (YY_MOVE (that.value));
        break;

      case 54: // VarDefList
        value.YY_MOVE_OR_COPY< std::shared_ptr<TreeNodeVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // T_IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (that.value));
        break;

      case 89: // FuncType
        value.YY_MOVE_OR_COPY< type_specifier > (YY_MOVE (that.value));
        break;

      case 80: // UnaryOp
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

      case 83: // AddExp
        value.move< std::shared_ptr<TreeNodeAddExp> > (YY_MOVE (that.value));
        break;

      case 50: // ArrayConstExpList
        value.move< std::shared_ptr<TreeNodeArrayConstExpList> > (YY_MOVE (that.value));
        break;

      case 75: // ArrayExpList
        value.move< std::shared_ptr<TreeNodeArrayExpList> > (YY_MOVE (that.value));
        break;

      case 68: // AssignStmt
        value.move< std::shared_ptr<TreeNodeAssignStmt> > (YY_MOVE (that.value));
        break;

      case 62: // Block
        value.move< std::shared_ptr<TreeNodeBlock> > (YY_MOVE (that.value));
        break;

      case 64: // BlockItem
        value.move< std::shared_ptr<TreeNodeBlockItem> > (YY_MOVE (that.value));
        break;

      case 63: // BlockItemList
        value.move< std::shared_ptr<TreeNodeBlockItemList> > (YY_MOVE (that.value));
        break;

      case 66: // BreakStmt
        value.move< std::shared_ptr<TreeNodeBreakStmt> > (YY_MOVE (that.value));
        break;

      case 79: // Callee
        value.move< std::shared_ptr<TreeNodeCallee> > (YY_MOVE (that.value));
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<TreeNodeCompUnit> > (YY_MOVE (that.value));
        break;

      case 73: // Cond
        value.move< std::shared_ptr<TreeNodeCond> > (YY_MOVE (that.value));
        break;

      case 47: // ConstDecl
        value.move< std::shared_ptr<TreeNodeConstDecl> > (YY_MOVE (that.value));
        break;

      case 49: // ConstDef
        value.move< std::shared_ptr<TreeNodeConstDef> > (YY_MOVE (that.value));
        break;

      case 48: // ConstDefList
        value.move< std::shared_ptr<TreeNodeConstDefList> > (YY_MOVE (that.value));
        break;

      case 88: // ConstExp
        value.move< std::shared_ptr<TreeNodeConstExp> > (YY_MOVE (that.value));
        break;

      case 51: // ConstInitVal
        value.move< std::shared_ptr<TreeNodeConstInitVal> > (YY_MOVE (that.value));
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<TreeNodeConstInitValList> > (YY_MOVE (that.value));
        break;

      case 67: // ContinueStmt
        value.move< std::shared_ptr<TreeNodeContinueStmt> > (YY_MOVE (that.value));
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<TreeNodeDeclDef> > (YY_MOVE (that.value));
        break;

      case 85: // EqExp
        value.move< std::shared_ptr<TreeNodeEqExp> > (YY_MOVE (that.value));
        break;

      case 72: // Exp
        value.move< std::shared_ptr<TreeNodeExp> > (YY_MOVE (that.value));
        break;

      case 81: // FuncRParams
        value.move< std::shared_ptr<TreeNodeExpList> > (YY_MOVE (that.value));
        break;

      case 58: // FuncDef
        value.move< std::shared_ptr<TreeNodeFuncDef> > (YY_MOVE (that.value));
        break;

      case 60: // FuncFParam
        value.move< std::shared_ptr<TreeNodeFuncFParam> > (YY_MOVE (that.value));
        break;

      case 59: // FuncFParams
        value.move< std::shared_ptr<TreeNodeFuncFParamList> > (YY_MOVE (that.value));
        break;

      case 56: // InitVal
        value.move< std::shared_ptr<TreeNodeInitVal> > (YY_MOVE (that.value));
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<TreeNodeInitValList> > (YY_MOVE (that.value));
        break;

      case 70: // IterationStmt
        value.move< std::shared_ptr<TreeNodeIterationStmt> > (YY_MOVE (that.value));
        break;

      case 86: // LAndExp
        value.move< std::shared_ptr<TreeNodeLAndExp> > (YY_MOVE (that.value));
        break;

      case 87: // LOrExp
        value.move< std::shared_ptr<TreeNodeLOrExp> > (YY_MOVE (that.value));
        break;

      case 74: // LVal
        value.move< std::shared_ptr<TreeNodeLVal> > (YY_MOVE (that.value));
        break;

      case 82: // MulExp
        value.move< std::shared_ptr<TreeNodeMulExp> > (YY_MOVE (that.value));
        break;

      case 77: // Number
        value.move< std::shared_ptr<TreeNodeNumber> > (YY_MOVE (that.value));
        break;

      case 61: // ParamArrayExpList
        value.move< std::shared_ptr<TreeNodeParamArrayExpList> > (YY_MOVE (that.value));
        break;

      case 76: // PrimaryExp
        value.move< std::shared_ptr<TreeNodePrimaryExp> > (YY_MOVE (that.value));
        break;

      case 84: // RelExp
        value.move< std::shared_ptr<TreeNodeRelExp> > (YY_MOVE (that.value));
        break;

      case 71: // ReturnStmt
        value.move< std::shared_ptr<TreeNodeReturnStmt> > (YY_MOVE (that.value));
        break;

      case 69: // SelectStmt
        value.move< std::shared_ptr<TreeNodeSelectStmt> > (YY_MOVE (that.value));
        break;

      case 65: // Stmt
        value.move< std::shared_ptr<TreeNodeStmt> > (YY_MOVE (that.value));
        break;

      case 78: // UnaryExp
        value.move< std::shared_ptr<TreeNodeUnaryExp> > (YY_MOVE (that.value));
        break;

      case 53: // VarDecl
        value.move< std::shared_ptr<TreeNodeVarDecl> > (YY_MOVE (that.value));
        break;

      case 55: // VarDef
        value.move< std::shared_ptr<TreeNodeVarDef> > (YY_MOVE (that.value));
        break;

      case 54: // VarDefList
        value.move< std::shared_ptr<TreeNodeVarDefList> > (YY_MOVE (that.value));
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (YY_MOVE (that.value));
        break;

      case 89: // FuncType
        value.move< type_specifier > (YY_MOVE (that.value));
        break;

      case 80: // UnaryOp
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

      case 83: // AddExp
        value.move< std::shared_ptr<TreeNodeAddExp> > (that.value);
        break;

      case 50: // ArrayConstExpList
        value.move< std::shared_ptr<TreeNodeArrayConstExpList> > (that.value);
        break;

      case 75: // ArrayExpList
        value.move< std::shared_ptr<TreeNodeArrayExpList> > (that.value);
        break;

      case 68: // AssignStmt
        value.move< std::shared_ptr<TreeNodeAssignStmt> > (that.value);
        break;

      case 62: // Block
        value.move< std::shared_ptr<TreeNodeBlock> > (that.value);
        break;

      case 64: // BlockItem
        value.move< std::shared_ptr<TreeNodeBlockItem> > (that.value);
        break;

      case 63: // BlockItemList
        value.move< std::shared_ptr<TreeNodeBlockItemList> > (that.value);
        break;

      case 66: // BreakStmt
        value.move< std::shared_ptr<TreeNodeBreakStmt> > (that.value);
        break;

      case 79: // Callee
        value.move< std::shared_ptr<TreeNodeCallee> > (that.value);
        break;

      case 45: // CompUnit
        value.move< std::shared_ptr<TreeNodeCompUnit> > (that.value);
        break;

      case 73: // Cond
        value.move< std::shared_ptr<TreeNodeCond> > (that.value);
        break;

      case 47: // ConstDecl
        value.move< std::shared_ptr<TreeNodeConstDecl> > (that.value);
        break;

      case 49: // ConstDef
        value.move< std::shared_ptr<TreeNodeConstDef> > (that.value);
        break;

      case 48: // ConstDefList
        value.move< std::shared_ptr<TreeNodeConstDefList> > (that.value);
        break;

      case 88: // ConstExp
        value.move< std::shared_ptr<TreeNodeConstExp> > (that.value);
        break;

      case 51: // ConstInitVal
        value.move< std::shared_ptr<TreeNodeConstInitVal> > (that.value);
        break;

      case 52: // ConstInitValList
        value.move< std::shared_ptr<TreeNodeConstInitValList> > (that.value);
        break;

      case 67: // ContinueStmt
        value.move< std::shared_ptr<TreeNodeContinueStmt> > (that.value);
        break;

      case 46: // DeclDef
        value.move< std::shared_ptr<TreeNodeDeclDef> > (that.value);
        break;

      case 85: // EqExp
        value.move< std::shared_ptr<TreeNodeEqExp> > (that.value);
        break;

      case 72: // Exp
        value.move< std::shared_ptr<TreeNodeExp> > (that.value);
        break;

      case 81: // FuncRParams
        value.move< std::shared_ptr<TreeNodeExpList> > (that.value);
        break;

      case 58: // FuncDef
        value.move< std::shared_ptr<TreeNodeFuncDef> > (that.value);
        break;

      case 60: // FuncFParam
        value.move< std::shared_ptr<TreeNodeFuncFParam> > (that.value);
        break;

      case 59: // FuncFParams
        value.move< std::shared_ptr<TreeNodeFuncFParamList> > (that.value);
        break;

      case 56: // InitVal
        value.move< std::shared_ptr<TreeNodeInitVal> > (that.value);
        break;

      case 57: // InitValList
        value.move< std::shared_ptr<TreeNodeInitValList> > (that.value);
        break;

      case 70: // IterationStmt
        value.move< std::shared_ptr<TreeNodeIterationStmt> > (that.value);
        break;

      case 86: // LAndExp
        value.move< std::shared_ptr<TreeNodeLAndExp> > (that.value);
        break;

      case 87: // LOrExp
        value.move< std::shared_ptr<TreeNodeLOrExp> > (that.value);
        break;

      case 74: // LVal
        value.move< std::shared_ptr<TreeNodeLVal> > (that.value);
        break;

      case 82: // MulExp
        value.move< std::shared_ptr<TreeNodeMulExp> > (that.value);
        break;

      case 77: // Number
        value.move< std::shared_ptr<TreeNodeNumber> > (that.value);
        break;

      case 61: // ParamArrayExpList
        value.move< std::shared_ptr<TreeNodeParamArrayExpList> > (that.value);
        break;

      case 76: // PrimaryExp
        value.move< std::shared_ptr<TreeNodePrimaryExp> > (that.value);
        break;

      case 84: // RelExp
        value.move< std::shared_ptr<TreeNodeRelExp> > (that.value);
        break;

      case 71: // ReturnStmt
        value.move< std::shared_ptr<TreeNodeReturnStmt> > (that.value);
        break;

      case 69: // SelectStmt
        value.move< std::shared_ptr<TreeNodeSelectStmt> > (that.value);
        break;

      case 65: // Stmt
        value.move< std::shared_ptr<TreeNodeStmt> > (that.value);
        break;

      case 78: // UnaryExp
        value.move< std::shared_ptr<TreeNodeUnaryExp> > (that.value);
        break;

      case 53: // VarDecl
        value.move< std::shared_ptr<TreeNodeVarDecl> > (that.value);
        break;

      case 55: // VarDef
        value.move< std::shared_ptr<TreeNodeVarDef> > (that.value);
        break;

      case 54: // VarDefList
        value.move< std::shared_ptr<TreeNodeVarDefList> > (that.value);
        break;

      case 31: // T_IDENTIFIER
        value.move< std::string > (that.value);
        break;

      case 89: // FuncType
        value.move< type_specifier > (that.value);
        break;

      case 80: // UnaryOp
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

      case 83: // AddExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeAddExp> > ();
        break;

      case 50: // ArrayConstExpList
        yylhs.value.emplace< std::shared_ptr<TreeNodeArrayConstExpList> > ();
        break;

      case 75: // ArrayExpList
        yylhs.value.emplace< std::shared_ptr<TreeNodeArrayExpList> > ();
        break;

      case 68: // AssignStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeAssignStmt> > ();
        break;

      case 62: // Block
        yylhs.value.emplace< std::shared_ptr<TreeNodeBlock> > ();
        break;

      case 64: // BlockItem
        yylhs.value.emplace< std::shared_ptr<TreeNodeBlockItem> > ();
        break;

      case 63: // BlockItemList
        yylhs.value.emplace< std::shared_ptr<TreeNodeBlockItemList> > ();
        break;

      case 66: // BreakStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeBreakStmt> > ();
        break;

      case 79: // Callee
        yylhs.value.emplace< std::shared_ptr<TreeNodeCallee> > ();
        break;

      case 45: // CompUnit
        yylhs.value.emplace< std::shared_ptr<TreeNodeCompUnit> > ();
        break;

      case 73: // Cond
        yylhs.value.emplace< std::shared_ptr<TreeNodeCond> > ();
        break;

      case 47: // ConstDecl
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstDecl> > ();
        break;

      case 49: // ConstDef
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstDef> > ();
        break;

      case 48: // ConstDefList
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstDefList> > ();
        break;

      case 88: // ConstExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstExp> > ();
        break;

      case 51: // ConstInitVal
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstInitVal> > ();
        break;

      case 52: // ConstInitValList
        yylhs.value.emplace< std::shared_ptr<TreeNodeConstInitValList> > ();
        break;

      case 67: // ContinueStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeContinueStmt> > ();
        break;

      case 46: // DeclDef
        yylhs.value.emplace< std::shared_ptr<TreeNodeDeclDef> > ();
        break;

      case 85: // EqExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeEqExp> > ();
        break;

      case 72: // Exp
        yylhs.value.emplace< std::shared_ptr<TreeNodeExp> > ();
        break;

      case 81: // FuncRParams
        yylhs.value.emplace< std::shared_ptr<TreeNodeExpList> > ();
        break;

      case 58: // FuncDef
        yylhs.value.emplace< std::shared_ptr<TreeNodeFuncDef> > ();
        break;

      case 60: // FuncFParam
        yylhs.value.emplace< std::shared_ptr<TreeNodeFuncFParam> > ();
        break;

      case 59: // FuncFParams
        yylhs.value.emplace< std::shared_ptr<TreeNodeFuncFParamList> > ();
        break;

      case 56: // InitVal
        yylhs.value.emplace< std::shared_ptr<TreeNodeInitVal> > ();
        break;

      case 57: // InitValList
        yylhs.value.emplace< std::shared_ptr<TreeNodeInitValList> > ();
        break;

      case 70: // IterationStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeIterationStmt> > ();
        break;

      case 86: // LAndExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeLAndExp> > ();
        break;

      case 87: // LOrExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeLOrExp> > ();
        break;

      case 74: // LVal
        yylhs.value.emplace< std::shared_ptr<TreeNodeLVal> > ();
        break;

      case 82: // MulExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeMulExp> > ();
        break;

      case 77: // Number
        yylhs.value.emplace< std::shared_ptr<TreeNodeNumber> > ();
        break;

      case 61: // ParamArrayExpList
        yylhs.value.emplace< std::shared_ptr<TreeNodeParamArrayExpList> > ();
        break;

      case 76: // PrimaryExp
        yylhs.value.emplace< std::shared_ptr<TreeNodePrimaryExp> > ();
        break;

      case 84: // RelExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeRelExp> > ();
        break;

      case 71: // ReturnStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeReturnStmt> > ();
        break;

      case 69: // SelectStmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeSelectStmt> > ();
        break;

      case 65: // Stmt
        yylhs.value.emplace< std::shared_ptr<TreeNodeStmt> > ();
        break;

      case 78: // UnaryExp
        yylhs.value.emplace< std::shared_ptr<TreeNodeUnaryExp> > ();
        break;

      case 53: // VarDecl
        yylhs.value.emplace< std::shared_ptr<TreeNodeVarDecl> > ();
        break;

      case 55: // VarDef
        yylhs.value.emplace< std::shared_ptr<TreeNodeVarDef> > ();
        break;

      case 54: // VarDefList
        yylhs.value.emplace< std::shared_ptr<TreeNodeVarDefList> > ();
        break;

      case 31: // T_IDENTIFIER
        yylhs.value.emplace< std::string > ();
        break;

      case 89: // FuncType
        yylhs.value.emplace< type_specifier > ();
        break;

      case 80: // UnaryOp
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
#line 135 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ()=std::make_shared<TreeNodeCompUnit>();
	// emplace_back效果类似于push_back，会调用构造函数和转移构造函数,如果可以在插入的时候直接构造，就只需要构造一次即可。
	yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeDeclDef> > ()));
	rootFromParser=yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ();
	//std::cout<<"CompUnit Decl"<<std::endl;

    }
#line 2566 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 3:
#line 143 "Sysy_parser.y" // lalr1.cc:906
    {
	yystack_[1].value.as< std::shared_ptr<TreeNodeCompUnit> > ()->DeclDefList.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeDeclDef> > ()));
	yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeCompUnit> > ());
	rootFromParser=yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ();
	//std::cout<<"CompUnit Decl"<<std::endl;

    }
#line 2578 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 4:
#line 150 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ()=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeCompUnit> > ());
    	rootFromParser=yylhs.value.as< std::shared_ptr<TreeNodeCompUnit> > ();
    	return 0;
    }
#line 2588 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 5:
#line 157 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()=std::make_shared<TreeNodeDeclDef>();
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstDecl> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->VarDecl=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->FuncDef=nullptr;
	//std::cout<<"DeclDef : ConstDecl"<<std::endl;
    }
#line 2600 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 6:
#line 164 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()=std::make_shared<TreeNodeDeclDef>();
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->ConstDecl=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeVarDecl> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->FuncDef=nullptr;
	//std::cout<<"DeclDef : VarDecl"<<std::endl;
    }
#line 2612 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 7:
#line 171 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()=std::make_shared<TreeNodeDeclDef>();
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->ConstDecl=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->VarDecl=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeDeclDef> > ()->FuncDef=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeFuncDef> > ());
	//std::cout<<"DeclDef : FuncDef"<<std::endl;
    }
#line 2624 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 8:
#line 180 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeConstDecl> > ()=std::make_shared<TreeNodeConstDecl>();
	yylhs.value.as< std::shared_ptr<TreeNodeConstDecl> > ()->ConstDefList=yystack_[1].value.as< std::shared_ptr<TreeNodeConstDefList> > ()->list;
	yylhs.value.as< std::shared_ptr<TreeNodeConstDecl> > ()->type=TYPE_INT;
	//std::cout<<"ConstDecl"<<std::endl;
    }
#line 2635 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 9:
#line 188 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<TreeNodeConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstDef> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeConstDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeConstDefList> > ());
		//std::cout<<"ConstDefList : ConstDefList T_COMMA ConstDef"<<std::endl;
    }
#line 2645 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 10:
#line 193 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeConstDefList> > ()=std::make_shared<TreeNodeConstDefList>();
	yylhs.value.as< std::shared_ptr<TreeNodeConstDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstDef> > ()));
	//std::cout<<"ConstDefList : ConstDef"<<std::endl;
    }
#line 2655 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 11:
#line 200 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeConstDef> > ()=std::make_shared<TreeNodeConstDef>();
		yylhs.value.as< std::shared_ptr<TreeNodeConstDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()->list;
		yylhs.value.as< std::shared_ptr<TreeNodeConstDef> > ()->id=yystack_[3].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<TreeNodeConstDef> > ()->ConstInitVal=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstInitVal> > ());
		//std::cout<<"ConstDef : T_IDENTIFIER ArrayConstExpList T_ASSIGN ConstInitVal"<<std::endl;
    }
#line 2667 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 12:
#line 214 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[3].value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeConstExp> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ());
		
    }
#line 2677 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 13:
#line 219 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()=std::make_shared<TreeNodeArrayConstExpList>();
	}
#line 2685 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 14:
#line 224 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()=std::make_shared<TreeNodeConstInitVal>();
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()->ConstExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstExp> > ());
    }
#line 2694 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 15:
#line 228 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()=std::make_shared<TreeNodeConstInitVal>();
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()->ConstExp=nullptr;

    }
#line 2704 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 16:
#line 233 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()=std::make_shared<TreeNodeConstInitVal>();
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()->ConstExp=nullptr;
        yylhs.value.as< std::shared_ptr<TreeNodeConstInitVal> > ()->ConstInitValList=yystack_[1].value.as< std::shared_ptr<TreeNodeConstInitValList> > ()->list;
    }
#line 2714 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 17:
#line 241 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitValList> > ()=std::make_shared<TreeNodeConstInitValList>();
		yylhs.value.as< std::shared_ptr<TreeNodeConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstInitVal> > ()));
    }
#line 2723 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 18:
#line 245 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<TreeNodeConstInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstInitVal> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeConstInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeConstInitValList> > ());
		//std::cout<<"ConstInitValList : ConstInitValList T_COMMA ConstInitVa"<<std::endl;
    }
#line 2733 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 19:
#line 253 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeVarDecl> > ()=std::make_shared<TreeNodeVarDecl>();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDecl> > ()->type=TYPE_INT;
		yylhs.value.as< std::shared_ptr<TreeNodeVarDecl> > ()->VarDefList=yystack_[1].value.as< std::shared_ptr<TreeNodeVarDefList> > ()->list;
		//std::cout<<"VarDecl"<<std::endl;
    }
#line 2744 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 20:
#line 262 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeVarDefList> > ()=std::make_shared<TreeNodeVarDefList>();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeVarDef> > ()));
		//std::cout<<"VarDefList:VarDef"<<std::endl;
    }
#line 2754 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 21:
#line 267 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<TreeNodeVarDefList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeVarDef> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeVarDefList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeVarDefList> > ());
		//std::cout<<"VarDefList:VarDefList T_COMMA VarDef "<<std::endl;
    }
#line 2764 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 22:
#line 274 "Sysy_parser.y" // lalr1.cc:906
    {

    	yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()=std::make_shared<TreeNodeVarDef>();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->id=yystack_[1].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->ArrayConstExpList=yystack_[0].value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()->list;
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->InitVal=nullptr;
		//std::cout<<"VarDef: T_IDENTIFIER ArrayConstExpList"<<std::endl;
    }
#line 2777 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 23:
#line 282 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()=std::make_shared<TreeNodeVarDef>();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->id=yystack_[3].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->ArrayConstExpList=yystack_[2].value.as< std::shared_ptr<TreeNodeArrayConstExpList> > ()->list;
		yylhs.value.as< std::shared_ptr<TreeNodeVarDef> > ()->InitVal=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeInitVal> > ());
		//std::cout<<"VarDef: T_IDENTIFIER ArrayConstExpList T_ASSIGN InitVal"<<std::endl;
    }
#line 2789 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 24:
#line 291 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()=std::make_shared<TreeNodeInitVal>();
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()->Exp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeExp> > ());
	//std::cout<<"InitVal:Exp"<<std::endl;
    }
#line 2799 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 25:
#line 296 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()=std::make_shared<TreeNodeInitVal>();
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()->Exp=nullptr;
	//std::cout<<"{}"<<std::endl;
    }
#line 2809 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 26:
#line 301 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()=std::make_shared<TreeNodeInitVal>();
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()->Exp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeInitVal> > ()->InitValList=yystack_[1].value.as< std::shared_ptr<TreeNodeInitValList> > ()->list;
	//std::cout<<"InitVal: { InitValList }"<<std::endl;
    }
#line 2820 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 27:
#line 310 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeInitValList> > ()=std::make_shared<TreeNodeInitValList>();
	yylhs.value.as< std::shared_ptr<TreeNodeInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeInitVal> > ()));
	//std::cout<<"InitValList : InitVal"<<std::endl;
    }
#line 2830 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 28:
#line 315 "Sysy_parser.y" // lalr1.cc:906
    {
	yystack_[2].value.as< std::shared_ptr<TreeNodeInitValList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeInitVal> > ()));
	yylhs.value.as< std::shared_ptr<TreeNodeInitValList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeInitValList> > ());
	//std::cout<<"InitValList T_COMMA InitVal"<<std::endl;
    }
#line 2840 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 29:
#line 323 "Sysy_parser.y" // lalr1.cc:906
    {
	//不带参数的返回类型为Void的函数
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()=std::make_shared<TreeNodeFuncDef>();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->type=yystack_[4].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeBlock> > ());
	//std::cout<<"Void FuncDef without Param"<<std::endl;
    }
#line 2853 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 30:
#line 331 "Sysy_parser.y" // lalr1.cc:906
    {
	//带有参数的返回值为Void的函数
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()=std::make_shared<TreeNodeFuncDef>();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->type=yystack_[5].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->id=yystack_[4].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->FuncFParamList=yystack_[2].value.as< std::shared_ptr<TreeNodeFuncFParamList> > ()->list;
	yylhs.value.as< std::shared_ptr<TreeNodeFuncDef> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeBlock> > ());
	//std::cout<<"Void FuncDef with Param"<<std::endl;
    }
#line 2867 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 31:
#line 343 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParamList> > ()=std::make_shared<TreeNodeFuncFParamList>();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParamList> > ()->list.emplace_back(yystack_[0].value.as< std::shared_ptr<TreeNodeFuncFParam> > ());
    }
#line 2876 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 32:
#line 347 "Sysy_parser.y" // lalr1.cc:906
    {
    	yystack_[2].value.as< std::shared_ptr<TreeNodeFuncFParamList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeFuncFParam> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParamList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeFuncFParamList> > ());
    }
#line 2885 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 33:
#line 368 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()=std::make_shared<TreeNodeFuncFParam>();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->type=yystack_[1].value.as< type_specifier > ();
	yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->id=yystack_[0].value.as< std::string > ();
    }
#line 2895 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 34:
#line 373 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()=std::make_shared<TreeNodeFuncFParam>();
		yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->type=TYPE_INT;
		yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->isarray=true;
		yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->id=yystack_[1].value.as< std::string > ();
		yylhs.value.as< std::shared_ptr<TreeNodeFuncFParam> > ()->ParamArrayExpList=yystack_[0].value.as< std::shared_ptr<TreeNodeParamArrayExpList> > ()->list;
	}
#line 2907 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 35:
#line 403 "Sysy_parser.y" // lalr1.cc:906
    {
    	//多维数组
		yystack_[3].value.as< std::shared_ptr<TreeNodeParamArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ()));
    	yylhs.value.as< std::shared_ptr<TreeNodeParamArrayExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<TreeNodeParamArrayExpList> > ());
    }
#line 2917 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 36:
#line 408 "Sysy_parser.y" // lalr1.cc:906
    {
	//一维数组
	yylhs.value.as< std::shared_ptr<TreeNodeParamArrayExpList> > ()=std::make_shared<TreeNodeParamArrayExpList>();
	}
#line 2926 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 37:
#line 415 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeBlock> > ()=std::make_shared<TreeNodeBlock>();
    	yylhs.value.as< std::shared_ptr<TreeNodeBlock> > ()->BlockItemList=yystack_[1].value.as< std::shared_ptr<TreeNodeBlockItemList> > ()->list;
    }
#line 2935 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 38:
#line 421 "Sysy_parser.y" // lalr1.cc:906
    {
    yystack_[1].value.as< std::shared_ptr<TreeNodeBlockItemList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeBlockItem> > ()));
    yylhs.value.as< std::shared_ptr<TreeNodeBlockItemList> > ()=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeBlockItemList> > ());
	//std::cout<<"BlockItemList : BlockItemList BlockItem"<<std::endl;
    }
#line 2945 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 39:
#line 426 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItemList> > ()=std::make_shared<TreeNodeBlockItemList>();
	}
#line 2953 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 40:
#line 431 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()=std::make_shared<TreeNodeBlockItem>();
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->ConstDecl=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeConstDecl> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->VarDecl=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->Stmt=nullptr;
	//std::cout<<"BlockItem: ConstDecl"<<std::endl;
    }
#line 2965 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 41:
#line 439 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()=std::make_shared<TreeNodeBlockItem>();
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->ConstDecl=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->VarDecl=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeVarDecl> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->Stmt=nullptr;
	//std::cout<<"BlockItem:VarDecl"<<std::endl;
    }
#line 2977 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 42:
#line 446 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()=std::make_shared<TreeNodeBlockItem>();
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->ConstDecl=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->VarDecl=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeBlockItem> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeStmt> > ());
	//std::cout<<"BlockItem:Stmt"<<std::endl;
    }
#line 2989 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 43:
#line 454 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeBreakStmt> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
	//std::cout<<"Stmt:break"<<std::endl;
    }
#line 3006 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 44:
#line 466 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeContinueStmt> > ());
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
		//std::cout<<"Stmt:Continue"<<std::endl;
    }
#line 3023 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 45:
#line 478 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAssignStmt> > ());
		//std::cout<<"Stmt:AssignStmt"<<std::endl;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
    }
#line 3040 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 46:
#line 490 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ());
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
		//std::cout<<"Stmt:Exp T_SEMICOLIN"<<std::endl;
    }
#line 3057 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 47:
#line 502 "Sysy_parser.y" // lalr1.cc:906
    {
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
    }
#line 3073 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 48:
#line 513 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeBlock> > ());
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
		//std::cout<<"Stmt: Block"<<std::endl;
    }
#line 3090 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 49:
#line 525 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeSelectStmt> > ());
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
		//std::cout<<"SelectStmt"<<std::endl;
    }
#line 3107 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 50:
#line 537 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeIterationStmt> > ());
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=nullptr;
		//std::cout<<"IterationStmt"<<std::endl;
    }
#line 3124 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 51:
#line 549 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()=std::make_shared<TreeNodeStmt>();
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->BreakStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ContinueStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->AssignStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Exp=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->Block=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->SelectStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->IterationStmt=nullptr;
		yylhs.value.as< std::shared_ptr<TreeNodeStmt> > ()->ReturnStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeReturnStmt> > ());
		//std::cout<<"ReturnStmt"<<std::endl;
    }
#line 3141 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 52:
#line 563 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeBreakStmt> > ()=std::make_shared<TreeNodeBreakStmt>();
    }
#line 3149 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 53:
#line 567 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeContinueStmt> > ()=std::make_shared<TreeNodeContinueStmt>();
    }
#line 3157 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 54:
#line 571 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeAssignStmt> > ()=std::make_shared<TreeNodeAssignStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeAssignStmt> > ()->LVal=std::move(yystack_[3].value.as< std::shared_ptr<TreeNodeLVal> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeAssignStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ());
    }
#line 3167 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 55:
#line 578 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()=std::make_shared<TreeNodeSelectStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeCond> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()->ifStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeStmt> > ());
    }
#line 3177 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 56:
#line 583 "Sysy_parser.y" // lalr1.cc:906
    {
    	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()=std::make_shared<TreeNodeSelectStmt>();
    	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()->Cond=std::move(yystack_[4].value.as< std::shared_ptr<TreeNodeCond> > ());
    	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()->ifStmt=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeStmt> > ());
    	yylhs.value.as< std::shared_ptr<TreeNodeSelectStmt> > ()->elseStmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeStmt> > ());
    }
#line 3188 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 57:
#line 591 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeIterationStmt> > ()=std::make_shared<TreeNodeIterationStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeIterationStmt> > ()->Cond=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeCond> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeIterationStmt> > ()->Stmt=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeStmt> > ());
    }
#line 3198 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 58:
#line 597 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeReturnStmt> > ()=std::make_shared<TreeNodeReturnStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeReturnStmt> > ()->Exp=nullptr;
    }
#line 3207 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 59:
#line 601 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeReturnStmt> > ()=std::make_shared<TreeNodeReturnStmt>();
	yylhs.value.as< std::shared_ptr<TreeNodeReturnStmt> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ());
    }
#line 3216 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 60:
#line 607 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeExp> > ()=std::make_shared<TreeNodeExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	//std::cout<<"Exp : AddExp"<<std::endl;
    }
#line 3226 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 61:
#line 614 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeCond> > ()=std::make_shared<TreeNodeCond>();
	yylhs.value.as< std::shared_ptr<TreeNodeCond> > ()->LOrExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeLOrExp> > ());
	//std::cout<<"Cond : LOrExp"<<std::endl;
    }
#line 3236 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 62:
#line 621 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeLVal> > ()=std::make_shared<TreeNodeLVal>();
	yylhs.value.as< std::shared_ptr<TreeNodeLVal> > ()->id=yystack_[1].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<TreeNodeLVal> > ()->ArrayExpList=yystack_[0].value.as< std::shared_ptr<TreeNodeArrayExpList> > ()->list;
	//std::cout<<"LVal:T_IDENTIFIER ParamArrayExpList"<<std::endl;
    }
#line 3247 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 63:
#line 628 "Sysy_parser.y" // lalr1.cc:906
    {
	yystack_[3].value.as< std::shared_ptr<TreeNodeArrayExpList> > ()->list.emplace_back(std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ()));
    yylhs.value.as< std::shared_ptr<TreeNodeArrayExpList> > ()=std::move(yystack_[3].value.as< std::shared_ptr<TreeNodeArrayExpList> > ());
	}
#line 3256 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 64:
#line 632 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeArrayExpList> > ()=std::make_shared<TreeNodeArrayExpList>();
  	}
#line 3264 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 65:
#line 637 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()=std::make_shared<TreeNodePrimaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Exp=std::move(yystack_[1].value.as< std::shared_ptr<TreeNodeExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->LVal=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Number=nullptr;
	//std::cout<<"PrimaryExp:(Exp)"<<std::endl;
    }
#line 3276 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 66:
#line 644 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()=std::make_shared<TreeNodePrimaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Exp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->LVal=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeLVal> > ());
    yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Number=nullptr;
    //std::cout<<"PrimaryExp：LVal"<<std::endl;
	}
#line 3288 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 67:
#line 651 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()=std::make_shared<TreeNodePrimaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Exp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->LVal=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodePrimaryExp> > ()->Number=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeNumber> > ());
    //std::cout<<"PrimaryExp：Number"<<std::endl;
	}
#line 3300 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 68:
#line 660 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeNumber> > ()=std::make_shared<TreeNodeNumber>();
	yylhs.value.as< std::shared_ptr<TreeNodeNumber> > ()->num=yystack_[0].value.as< int > ();
    //std::cout<<"Numbers"<<std::endl;
	}
#line 3310 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 69:
#line 668 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()=std::make_shared<TreeNodeUnaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->op=OP_POS;
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->PrimaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodePrimaryExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->Callee=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->UnaryExp=nullptr;
	//std::cout<<"UnaryExp:PrimaryExp"<<std::endl;
    }
#line 3323 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 70:
#line 676 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()=std::make_shared<TreeNodeUnaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->op=OP_POS;
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->PrimaryExp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->Callee=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeCallee> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->UnaryExp=nullptr;
	//std::cout<<"UnaryExp:Callee"<<std::endl;
    }
#line 3336 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 71:
#line 684 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()=std::make_shared<TreeNodeUnaryExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->op=yystack_[1].value.as< unaryop > ();
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->PrimaryExp=nullptr;
    yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->Callee=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeUnaryExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeUnaryExp> > ());
    //std::cout<<"UnaryExp:UnaryOp UnaryExp "<<std::endl;
	}
#line 3349 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 72:
#line 694 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeCallee> > ()=std::make_shared<TreeNodeCallee>();
	yylhs.value.as< std::shared_ptr<TreeNodeCallee> > ()->id=yystack_[2].value.as< std::string > ();
    }
#line 3358 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 73:
#line 698 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeCallee> > ()=std::make_shared<TreeNodeCallee>();
	yylhs.value.as< std::shared_ptr<TreeNodeCallee> > ()->id=yystack_[3].value.as< std::string > ();
	yylhs.value.as< std::shared_ptr<TreeNodeCallee> > ()->ExpList=yystack_[1].value.as< std::shared_ptr<TreeNodeExpList> > ()->list;
	}
#line 3368 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 74:
#line 706 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< unaryop > ()=OP_POS;
	//std::cout<<"+"<<std::endl;
    }
#line 3377 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 75:
#line 710 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< unaryop > ()=OP_NEG;
    //std::cout<<"-"<<std::endl;
	}
#line 3386 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 76:
#line 714 "Sysy_parser.y" // lalr1.cc:906
    {
    yylhs.value.as< unaryop > ()=OP_NOT;
    //std::cout<<"！"<<std::endl;
	}
#line 3395 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 77:
#line 719 "Sysy_parser.y" // lalr1.cc:906
    {
    yystack_[2].value.as< std::shared_ptr<TreeNodeExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeExp> > ()));
    yylhs.value.as< std::shared_ptr<TreeNodeExpList> > ()=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeExpList> > ());
    //std::cout<<"FuncRParams :Exp,Exp"<<std::endl;
	}
#line 3405 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 78:
#line 724 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeExpList> > ()=std::make_shared<TreeNodeExpList>();
	yylhs.value.as< std::shared_ptr<TreeNodeExpList> > ()->list.emplace_back(std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeExp> > ()));
    //std::cout<<"FuncRParams : Exp "<<std::endl;
	}
#line 3415 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 79:
#line 732 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()=std::make_shared<TreeNodeMulExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeUnaryExp> > ());
	//std::cout<<"MulExp : UnaryExp"<<std::endl;
    }
#line 3425 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 80:
#line 737 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()=std::make_shared<TreeNodeMulExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeMulExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->op=OP_MUL;
	//std::cout<<"MulExp : MulExp T_MUL UnaryExp"<<std::endl;
    }
#line 3437 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 81:
#line 744 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()=std::make_shared<TreeNodeMulExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeMulExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->op=OP_DIV;
	//std::cout<<"MulExp : MulExp T_DIV UnaryExp"<<std::endl;
    }
#line 3449 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 82:
#line 751 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()=std::make_shared<TreeNodeMulExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->MulExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeMulExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->UnaryExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeUnaryExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeMulExp> > ()->op=OP_MOD;
	//std::cout<<"MulExp :MulExp T_MOD UnaryExp"<<std::endl;
    }
#line 3461 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 83:
#line 760 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()=std::make_shared<TreeNodeAddExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeMulExp> > ());
    ////std::cout<<""<<std::endl;
	}
#line 3471 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 84:
#line 765 "Sysy_parser.y" // lalr1.cc:906
    {
   	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()=std::make_shared<TreeNodeAddExp>();
   	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeAddExp> > ());
   	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeMulExp> > ());
   	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->op=OP_PLUS;
	////std::cout<<""<<std::endl;
    }
#line 3483 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 85:
#line 772 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()=std::make_shared<TreeNodeAddExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->AddExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->MulExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeMulExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeAddExp> > ()->op=OP_MINUS;
	////std::cout<<""<<std::endl;
    }
#line 3495 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 86:
#line 781 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()=std::make_shared<TreeNodeRelExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->RelExp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	//std::cout<<"RelExp : AddExp	"<<std::endl;
    }
#line 3506 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 87:
#line 787 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()=std::make_shared<TreeNodeRelExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->op=OP_LT;
	//std::cout<<"RelExp : RelExp T_LT AddExp	"<<std::endl;
    }
#line 3518 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 88:
#line 794 "Sysy_parser.y" // lalr1.cc:906
    {
  	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()=std::make_shared<TreeNodeRelExp>();
  	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeRelExp> > ());
  	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
  	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->op=OP_GT;
	//std::cout<<"RelExp : RelExp T_GT AddExp"<<std::endl;
    }
#line 3530 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 89:
#line 801 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()=std::make_shared<TreeNodeRelExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->op=OP_LTE;
	//std::cout<<"RelExp : RelExp T_LTE AddExp"<<std::endl;
    }
#line 3542 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 90:
#line 808 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()=std::make_shared<TreeNodeRelExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->RelExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeRelExp> > ()->op=OP_GTE;
	//std::cout<<"RelExp : RelExp T_GTE AddExp"<<std::endl;
    }
#line 3554 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 91:
#line 817 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()=std::make_shared<TreeNodeEqExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->EqExp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	//std::cout<<"EqExp : RelExp"<<std::endl;
    }
#line 3565 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 92:
#line 823 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()=std::make_shared<TreeNodeEqExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeEqExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->op=OP_EQ;
	//std::cout<<"EqExp : EqExp T_EQ RelExp"<<std::endl;
    }
#line 3577 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 93:
#line 830 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()=std::make_shared<TreeNodeEqExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->EqExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeEqExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->RelExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeRelExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeEqExp> > ()->op=OP_NEQ;
	//std::cout<<"EqExp : EqExp T_NEQ RelExp"<<std::endl;
    }
#line 3589 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 94:
#line 839 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()=std::make_shared<TreeNodeLAndExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()->LAndExp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeEqExp> > ());
	//std::cout<<"LAndExp : EqExp"<<std::endl;
    }
#line 3600 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 95:
#line 845 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()=std::make_shared<TreeNodeLAndExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()->LAndExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeLAndExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()->EqExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeEqExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeLAndExp> > ()->op=OP_AND;
	//std::cout<<"LAndExp : LAndExp T_AND EqExp"<<std::endl;
    }
#line 3612 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 96:
#line 854 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()=std::make_shared<TreeNodeLOrExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()->LOrExp=nullptr;
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeLAndExp> > ());
	//std::cout<<"LOrExp : LAndExp"<<std::endl;
    }
#line 3623 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 97:
#line 860 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()=std::make_shared<TreeNodeLOrExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()->LOrExp=std::move(yystack_[2].value.as< std::shared_ptr<TreeNodeLOrExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()->LAndExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeLAndExp> > ());
	yylhs.value.as< std::shared_ptr<TreeNodeLOrExp> > ()->op=OP_OR;
	//std::cout<<"LOrExp : LOrExp T_OR LAndExp"<<std::endl;
    }
#line 3635 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 98:
#line 869 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< std::shared_ptr<TreeNodeConstExp> > ()=std::make_shared<TreeNodeConstExp>();
	yylhs.value.as< std::shared_ptr<TreeNodeConstExp> > ()->AddExp=std::move(yystack_[0].value.as< std::shared_ptr<TreeNodeAddExp> > ());
	//std::cout<<"ConstExp : AddExp"<<std::endl;
    }
#line 3645 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 99:
#line 878 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_VOID;
    }
#line 3653 "./front/sysy_parser.cc" // lalr1.cc:906
    break;

  case 100:
#line 882 "Sysy_parser.y" // lalr1.cc:906
    {
	yylhs.value.as< type_specifier > ()=TYPE_INT;
	}
#line 3661 "./front/sysy_parser.cc" // lalr1.cc:906
    break;


#line 3665 "./front/sysy_parser.cc" // lalr1.cc:906
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


  const signed char sysy_parser::yypact_ninf_ = -101;

  const signed char sysy_parser::yytable_ninf_ = -1;

  const short
  sysy_parser::yypact_[] =
  {
     -12,  -101,  -101,    63,     7,  -101,  -101,  -101,  -101,    -3,
       6,  -101,  -101,  -101,     4,    82,  -101,  -101,    85,  -101,
      -8,    41,  -101,    13,    53,  -101,     6,    25,    -9,  -101,
      28,   137,   184,  -101,  -101,   165,  -101,  -101,  -101,    63,
      25,    30,  -101,  -101,   184,     8,    48,  -101,  -101,  -101,
    -101,  -101,  -101,  -101,  -101,  -101,   184,    87,   103,   103,
      51,    19,  -101,  -101,   107,  -101,  -101,  -101,    49,    68,
    -101,  -101,    12,   167,   104,  -101,   184,   184,   184,   184,
     184,  -101,  -101,  -101,    34,  -101,  -101,   110,    66,   113,
      89,   127,  -101,  -101,  -101,  -101,  -101,  -101,  -101,  -101,
    -101,  -101,  -101,   132,   134,    13,   184,  -101,   137,  -101,
    -101,  -101,    62,   184,  -101,  -101,  -101,    87,    87,   165,
    -101,   184,  -101,   136,   184,  -101,  -101,  -101,   184,   129,
    -101,   184,  -101,   133,  -101,   139,   103,    65,    96,   115,
     119,  -101,   143,   160,  -101,  -101,  -101,   135,   184,   184,
     184,   184,   184,   184,   184,   184,   135,  -101,   154,   103,
     103,   103,   103,    65,    65,    96,   115,  -101,   135,  -101
  };

  const unsigned char
  sysy_parser::yydefact_[] =
  {
       0,   100,    99,     0,     0,     2,     5,     6,     7,     0,
       0,     1,     4,     3,    13,     0,    20,    13,     0,    10,
       0,    22,    19,     0,     0,     8,     0,     0,     0,    31,
       0,     0,     0,    13,    21,     0,     9,    39,    29,     0,
       0,    33,    74,    75,     0,     0,    64,    68,    76,    23,
      24,    66,    69,    67,    79,    70,     0,    83,    60,    98,
       0,     0,    11,    14,     0,    32,    30,    36,    34,     0,
      25,    27,     0,     0,    62,    71,     0,     0,     0,     0,
       0,    12,    15,    17,     0,    47,    37,     0,     0,     0,
       0,     0,    40,    41,    48,    38,    42,    43,    44,    45,
      49,    50,    51,     0,    66,     0,     0,    65,     0,    26,
      72,    78,     0,     0,    80,    81,    82,    84,    85,     0,
      16,     0,    58,     0,     0,    52,    53,    46,     0,     0,
      28,     0,    73,     0,    18,     0,    86,    91,    94,    96,
      61,    59,     0,     0,    35,    77,    63,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    54,    55,    87,
      89,    88,    90,    92,    93,    95,    97,    57,     0,    56
  };

  const short
  sysy_parser::yypgoto_[] =
  {
    -101,  -101,   176,   117,  -101,   156,   166,   -55,  -101,   121,
    -101,   168,   -43,  -101,  -101,  -101,   153,  -101,   -19,  -101,
    -101,  -100,  -101,  -101,  -101,  -101,  -101,  -101,   -27,    69,
     -63,  -101,  -101,  -101,   -23,  -101,  -101,  -101,    35,   -32,
     -25,    40,    45,  -101,   163,     2
  };

  const short
  sysy_parser::yydefgoto_[] =
  {
      -1,     4,     5,     6,    18,    19,    21,    62,    84,     7,
      15,    16,    49,    72,     8,    28,    29,    68,    94,    64,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   135,
      51,    74,    52,    53,    54,    55,    56,   112,    57,    58,
     137,   138,   139,   140,    63,     9
  };

  const unsigned char
  sysy_parser::yytable_[] =
  {
      59,   104,    71,    59,    50,    10,    83,    11,    38,    39,
      12,    40,    27,    42,    43,     1,     2,    69,    50,     1,
       2,    66,    30,    20,    42,    43,     3,    44,    14,    59,
     108,    45,    70,    75,     1,     2,   109,    17,    44,    46,
      47,    30,    61,    82,    33,     3,   111,   158,    37,    48,
      46,    47,   119,   114,   115,   116,   167,    31,   120,    41,
      48,   123,    32,    67,   134,   130,   105,    73,   169,    35,
     106,    42,    43,    81,    32,   148,   149,   150,   151,   129,
     131,    50,   132,   122,   104,    44,   133,    59,   107,   136,
       1,     2,   136,   104,    76,    77,    78,    46,    47,    22,
      23,   143,    25,    26,   145,   104,   125,    48,    79,    80,
     152,   153,    42,    43,   117,   118,   159,   160,   161,   162,
     136,   136,   136,   136,    85,   113,    44,   163,   164,   121,
      37,    86,   124,    87,     1,     2,    88,    89,    46,    47,
      42,    43,    42,    43,   126,     3,    90,    91,    48,   127,
     128,   144,    85,   141,    44,   146,    44,   154,    37,   147,
      45,    87,   155,   156,    88,    89,    46,    47,    46,    47,
      42,    43,    42,    43,    90,    91,    48,   157,    48,   168,
      13,    92,    36,    24,    44,    93,    44,   110,    61,    42,
      43,    34,    65,   142,   165,    60,    46,    47,    46,    47,
     166,     0,     0,    44,     0,     0,    48,     0,    48,     0,
       0,     0,     0,     0,     0,    46,    47,     0,     0,     0,
       0,     0,     0,     0,     0,    48
  };

  const short
  sysy_parser::yycheck_[] =
  {
      32,    64,    45,    35,    31,     3,    61,     0,    27,    18,
       3,    20,    20,     5,     6,    27,    28,    44,    45,    27,
      28,    40,    20,    19,     5,     6,    38,    19,    31,    61,
      18,    23,    24,    56,    27,    28,    24,    31,    19,    31,
      32,    39,    23,    24,    31,    38,    73,   147,    23,    41,
      31,    32,    18,    76,    77,    78,   156,    16,    24,    31,
      41,    88,    21,    33,   119,   108,    64,    19,   168,    16,
      21,     5,     6,    22,    21,    10,    11,    12,    13,   106,
      18,   108,    20,    17,   147,    19,   113,   119,    20,   121,
      27,    28,   124,   156,     7,     8,     9,    31,    32,    17,
      18,   128,    17,    18,   131,   168,    17,    41,     5,     6,
      14,    15,     5,     6,    79,    80,   148,   149,   150,   151,
     152,   153,   154,   155,    17,    21,    19,   152,   153,    19,
      23,    24,    19,    26,    27,    28,    29,    30,    31,    32,
       5,     6,     5,     6,    17,    38,    39,    40,    41,    17,
      16,    22,    17,    17,    19,    22,    19,    42,    23,    20,
      23,    26,    43,    20,    29,    30,    31,    32,    31,    32,
       5,     6,     5,     6,    39,    40,    41,    17,    41,    25,
       4,    64,    26,    17,    19,    64,    19,    20,    23,     5,
       6,    23,    39,   124,   154,    32,    31,    32,    31,    32,
     155,    -1,    -1,    19,    -1,    -1,    41,    -1,    41,    -1,
      -1,    -1,    -1,    -1,    -1,    31,    32,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    41
  };

  const unsigned char
  sysy_parser::yystos_[] =
  {
       0,    27,    28,    38,    45,    46,    47,    53,    58,    89,
      89,     0,     3,    46,    31,    54,    55,    31,    48,    49,
      19,    50,    17,    18,    50,    17,    18,    20,    59,    60,
      89,    16,    21,    31,    55,    16,    49,    23,    62,    18,
      20,    31,     5,     6,    19,    23,    31,    32,    41,    56,
      72,    74,    76,    77,    78,    79,    80,    82,    83,    83,
      88,    23,    51,    88,    63,    60,    62,    33,    61,    72,
      24,    56,    57,    19,    75,    78,     7,     8,     9,     5,
       6,    22,    24,    51,    52,    17,    24,    26,    29,    30,
      39,    40,    47,    53,    62,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    74,    89,    21,    20,    18,    24,
      20,    72,    81,    21,    78,    78,    78,    82,    82,    18,
      24,    19,    17,    72,    19,    17,    17,    17,    16,    72,
      56,    18,    20,    72,    51,    73,    83,    84,    85,    86,
      87,    17,    73,    72,    22,    72,    22,    20,    10,    11,
      12,    13,    14,    15,    42,    43,    20,    17,    65,    83,
      83,    83,    83,    84,    84,    85,    86,    65,    25,    65
  };

  const unsigned char
  sysy_parser::yyr1_[] =
  {
       0,    44,    45,    45,    45,    46,    46,    46,    47,    48,
      48,    49,    50,    50,    51,    51,    51,    52,    52,    53,
      54,    54,    55,    55,    56,    56,    56,    57,    57,    58,
      58,    59,    59,    60,    60,    61,    61,    62,    63,    63,
      64,    64,    64,    65,    65,    65,    65,    65,    65,    65,
      65,    65,    66,    67,    68,    69,    69,    70,    71,    71,
      72,    73,    74,    75,    75,    76,    76,    76,    77,    78,
      78,    78,    79,    79,    80,    80,    80,    81,    81,    82,
      82,    82,    82,    83,    83,    83,    84,    84,    84,    84,
      84,    85,    85,    85,    86,    86,    87,    87,    88,    89,
      89
  };

  const unsigned char
  sysy_parser::yyr2_[] =
  {
       0,     2,     1,     2,     2,     1,     1,     1,     4,     3,
       1,     4,     4,     0,     1,     2,     3,     1,     3,     3,
       1,     3,     2,     4,     1,     2,     3,     1,     3,     5,
       6,     1,     3,     2,     3,     4,     1,     3,     2,     0,
       1,     1,     1,     1,     1,     1,     2,     1,     1,     1,
       1,     1,     2,     2,     4,     5,     7,     5,     2,     3,
       1,     1,     2,     4,     0,     3,     1,     1,     1,     1,
       1,     2,     3,     4,     1,     1,     1,     3,     1,     1,
       3,     3,     3,     1,     3,     3,     1,     3,     3,     3,
       3,     1,     3,     3,     1,     3,     1,     3,     1,     1,
       1
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
  "ConstDef", "ArrayConstExpList", "ConstInitVal", "ConstInitValList",
  "VarDecl", "VarDefList", "VarDef", "InitVal", "InitValList", "FuncDef",
  "FuncFParams", "FuncFParam", "ParamArrayExpList", "Block",
  "BlockItemList", "BlockItem", "Stmt", "BreakStmt", "ContinueStmt",
  "AssignStmt", "SelectStmt", "IterationStmt", "ReturnStmt", "Exp", "Cond",
  "LVal", "ArrayExpList", "PrimaryExp", "Number", "UnaryExp", "Callee",
  "UnaryOp", "FuncRParams", "MulExp", "AddExp", "RelExp", "EqExp",
  "LAndExp", "LOrExp", "ConstExp", "FuncType", YY_NULLPTR
  };


  const unsigned short
  sysy_parser::yyrline_[] =
  {
       0,   135,   135,   143,   150,   157,   164,   171,   180,   188,
     193,   200,   214,   219,   224,   228,   233,   241,   245,   253,
     262,   267,   274,   282,   291,   296,   301,   310,   315,   323,
     331,   343,   347,   368,   373,   402,   408,   415,   421,   426,
     431,   439,   446,   454,   466,   478,   490,   502,   513,   525,
     537,   549,   563,   567,   571,   578,   583,   591,   597,   601,
     607,   614,   621,   628,   632,   637,   644,   651,   660,   668,
     676,   684,   694,   698,   706,   710,   714,   719,   724,   732,
     737,   744,   751,   760,   765,   772,   781,   787,   794,   801,
     808,   817,   823,   830,   839,   845,   854,   860,   869,   877,
     881
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
#line 4134 "./front/sysy_parser.cc" // lalr1.cc:1217
#line 886 "Sysy_parser.y" // lalr1.cc:1218


void yy::sysy_parser::error (const location_type& l, const std::string& m){
	std::cout << l << "\n";
	std::cout << "Find error in parsering, " << m<< "\n";
}
