// A Bison parser, made by GNU Bison 3.2.

// Skeleton interface for Bison LALR(1) parsers in C++

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


/**
 ** \file ./build/sysy_parser.hh
 ** Define the yy::parser class.
 */

// C++ LALR(1) parser skeleton written by Akim Demaille.

// Undocumented macros, especially those whose name start with YY_,
// are private implementation details.  Do not rely on them.

#ifndef YY_YY_BUILD_SYSY_PARSER_HH_INCLUDED
# define YY_YY_BUILD_SYSY_PARSER_HH_INCLUDED
// //                    "%code requires" blocks.
#line 25 "Parser.y" // lalr1.cc:403

#define YYLTYPE
#include <syntax_tree.hh>
#include <string>
class sysy_driver;
namespace yy {
    class sysyFlexLexer;
}

#line 58 "./build/sysy_parser.hh" // lalr1.cc:403


# include <cstdlib> // std::abort
# include <iostream>
# include <stdexcept>
# include <string>
# include <vector>

// Support move semantics when possible.
#if defined __cplusplus && 201103L <= __cplusplus
# define YY_MOVE           std::move
# define YY_MOVE_OR_COPY   move
# define YY_MOVE_REF(Type) Type&&
# define YY_RVREF(Type)    Type&&
# define YY_COPY(Type)     Type
#else
# define YY_MOVE
# define YY_MOVE_OR_COPY   copy
# define YY_MOVE_REF(Type) Type&
# define YY_RVREF(Type)    const Type&
# define YY_COPY(Type)     const Type&
#endif
# include "location.hh"

#ifndef YYASSERT
# include <cassert>
# define YYASSERT assert
#endif


#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif


namespace yy {
#line 152 "./build/sysy_parser.hh" // lalr1.cc:403

  /// A stack with random access from its top.
  template <typename T, typename S = std::vector<T> >
  class stack
  {
  public:
    // Hide our reversed order.
    typedef typename S::reverse_iterator iterator;
    typedef typename S::const_reverse_iterator const_iterator;
    typedef typename S::size_type size_type;

    stack (size_type n = 200)
      : seq_ (n)
    {}

    /// Random access.
    ///
    /// Index 0 returns the topmost element.
    T&
    operator[] (size_type i)
    {
      return seq_[size () - 1 - i];
    }

    /// Random access.
    ///
    /// Index 0 returns the topmost element.
    T&
    operator[] (int i)
    {
      return operator[] (size_type (i));
    }

    /// Random access.
    ///
    /// Index 0 returns the topmost element.
    const T&
    operator[] (size_type i) const
    {
      return seq_[size () - 1 - i];
    }

    /// Random access.
    ///
    /// Index 0 returns the topmost element.
    const T&
    operator[] (int i) const
    {
      return operator[] (size_type (i));
    }

    /// Steal the contents of \a t.
    ///
    /// Close to move-semantics.
    void
    push (YY_MOVE_REF (T) t)
    {
      seq_.push_back (T ());
      operator[](0).move (t);
    }

    void
    pop (int n = 1)
    {
      for (; 0 < n; --n)
        seq_.pop_back ();
    }

    void
    clear ()
    {
      seq_.clear ();
    }

    size_type
    size () const
    {
      return seq_.size ();
    }

    const_iterator
    begin () const
    {
      return seq_.rbegin ();
    }

    const_iterator
    end () const
    {
      return seq_.rend ();
    }

  private:
    stack (const stack&);
    stack& operator= (const stack&);
    /// The wrapped container.
    S seq_;
  };

  /// Present a slice of the top of a stack.
  template <typename T, typename S = stack<T> >
  class slice
  {
  public:
    slice (const S& stack, int range)
      : stack_ (stack)
      , range_ (range)
    {}

    const T&
    operator[] (int i) const
    {
      return stack_[range_ - i];
    }

  private:
    const S& stack_;
    int range_;
  };



  /// A char[S] buffer to store and retrieve objects.
  ///
  /// Sort of a variant, but does not keep track of the nature
  /// of the stored data, since that knowledge is available
  /// via the current state.
  template <size_t S>
  struct variant
  {
    /// Type of *this.
    typedef variant<S> self_type;

    /// Empty construction.
    variant ()
      : yybuffer_ ()
    {}

    /// Construct and fill.
    template <typename T>
    variant (YY_RVREF (T) t)
    {
      YYASSERT (sizeof (T) <= S);
      new (yyas_<T> ()) T (YY_MOVE (t));
    }

    /// Destruction, allowed only if empty.
    ~variant ()
    {}

    /// Instantiate an empty \a T in here.
    template <typename T>
    T&
    emplace ()
    {
      return *new (yyas_<T> ()) T ();
    }

# if defined __cplusplus && 201103L <= __cplusplus
    /// Instantiate a \a T in here from \a t.
    template <typename T, typename U>
    T&
    emplace (U&& u)
    {
      return *new (yyas_<T> ()) T (std::forward <U>(u));
    }
# else
    /// Instantiate a \a T in here from \a t.
    template <typename T>
    T&
    emplace (const T& t)
    {
      return *new (yyas_<T> ()) T (t);
    }
# endif

    /// Instantiate an empty \a T in here.
    /// Obsolete, use emplace.
    template <typename T>
    T&
    build ()
    {
      return emplace<T> ();
    }

    /// Instantiate a \a T in here from \a t.
    /// Obsolete, use emplace.
    template <typename T>
    T&
    build (const T& t)
    {
      return emplace<T> (t);
    }

    /// Accessor to a built \a T.
    template <typename T>
    T&
    as ()
    {
      return *yyas_<T> ();
    }

    /// Const accessor to a built \a T (for %printer).
    template <typename T>
    const T&
    as () const
    {
      return *yyas_<T> ();
    }

    /// Swap the content with \a other, of same type.
    ///
    /// Both variants must be built beforehand, because swapping the actual
    /// data requires reading it (with as()), and this is not possible on
    /// unconstructed variants: it would require some dynamic testing, which
    /// should not be the variant's responsibility.
    /// Swapping between built and (possibly) non-built is done with
    /// variant::move ().
    template <typename T>
    void
    swap (self_type& other)
    {
      std::swap (as<T> (), other.as<T> ());
    }

    /// Move the content of \a other to this.
    ///
    /// Destroys \a other.
    template <typename T>
    void
    move (self_type& other)
    {
# if defined __cplusplus && 201103L <= __cplusplus
      emplace<T> (std::move (other.as<T> ()));
# else
      emplace<T> ();
      swap<T> (other);
# endif
      other.destroy<T> ();
    }

# if defined __cplusplus && 201103L <= __cplusplus
    /// Move the content of \a other to this.
    template <typename T>
    void
    move (self_type&& other)
    {
      emplace<T> (std::move (other.as<T> ()));
      other.destroy<T> ();
    }
#endif

    /// Copy the content of \a other to this.
    template <typename T>
    void
    copy (const self_type& other)
    {
      emplace<T> (other.as<T> ());
    }

    /// Destroy the stored \a T.
    template <typename T>
    void
    destroy ()
    {
      as<T> ().~T ();
    }

  private:
    /// Prohibit blind copies.
    self_type& operator= (const self_type&);
    variant (const self_type&);

    /// Accessor to raw memory as \a T.
    template <typename T>
    T*
    yyas_ ()
    {
      void *yyp = yybuffer_.yyraw;
      return static_cast<T*> (yyp);
     }

    /// Const accessor to raw memory as \a T.
    template <typename T>
    const T*
    yyas_ () const
    {
      const void *yyp = yybuffer_.yyraw;
      return static_cast<const T*> (yyp);
     }

    union
    {
      /// Strongest alignment constraints.
      long double yyalign_me;
      /// A buffer large enough to store any of the semantic values.
      char yyraw[S];
    } yybuffer_;
  };


  /// A Bison parser.
  class sysy_parser
  {
  public:
#ifndef YYSTYPE
    /// An auxiliary type to compute the largest semantic type.
    union union_type
    {
      // TOK_NUMBER
      char dummy1[sizeof (int)];

      // AddExp
      char dummy2[sizeof (std::shared_ptr<SyntaxAddExp>)];

      // ConstIndexList
      char dummy3[sizeof (std::shared_ptr<SyntaxArrayConstExpList>)];

      // AssignStmt
      char dummy4[sizeof (std::shared_ptr<SyntaxAssignStmt>)];

      // Block
      char dummy5[sizeof (std::shared_ptr<SyntaxBlock>)];

      // BlockItem
      char dummy6[sizeof (std::shared_ptr<SyntaxBlockItem>)];

      // BlockItemList
      char dummy7[sizeof (std::shared_ptr<SyntaxBlockItemList>)];

      // BreakStmt
      char dummy8[sizeof (std::shared_ptr<SyntaxBreakStmt>)];

      // Callee
      char dummy9[sizeof (std::shared_ptr<SyntaxCallee>)];

      // CompUnit
      char dummy10[sizeof (std::shared_ptr<SyntaxCompUnit>)];

      // Cond
      char dummy11[sizeof (std::shared_ptr<SyntaxCond>)];

      // ConstDecl
      char dummy12[sizeof (std::shared_ptr<SyntaxConstDecl>)];

      // ConstDef
      char dummy13[sizeof (std::shared_ptr<SyntaxConstDef>)];

      // ConstDefList
      char dummy14[sizeof (std::shared_ptr<SyntaxConstDefList>)];

      // ConstExp
      char dummy15[sizeof (std::shared_ptr<SyntaxConstExp>)];

      // ConstInitVal
      char dummy16[sizeof (std::shared_ptr<SyntaxConstInitVal>)];

      // ConstInitValList
      char dummy17[sizeof (std::shared_ptr<SyntaxConstInitValList>)];

      // ContinueStmt
      char dummy18[sizeof (std::shared_ptr<SyntaxContinueStmt>)];

      // DeclDef
      char dummy19[sizeof (std::shared_ptr<SyntaxDeclDef>)];

      // EqExp
      char dummy20[sizeof (std::shared_ptr<SyntaxEqExp>)];

      // Exp
      char dummy21[sizeof (std::shared_ptr<SyntaxExp>)];

      // FuncRParams
      char dummy22[sizeof (std::shared_ptr<SyntaxExpList>)];

      // FuncDef
      char dummy23[sizeof (std::shared_ptr<SyntaxFuncDef>)];

      // FuncFParam
      char dummy24[sizeof (std::shared_ptr<SyntaxFuncFParam>)];

      // FuncFParams
      char dummy25[sizeof (std::shared_ptr<SyntaxFuncFParamList>)];

      // InitVal
      char dummy26[sizeof (std::shared_ptr<SyntaxInitVal>)];

      // InitValList
      char dummy27[sizeof (std::shared_ptr<SyntaxInitValList>)];

      // IterationStmt
      char dummy28[sizeof (std::shared_ptr<SyntaxIterationStmt>)];

      // LAndExp
      char dummy29[sizeof (std::shared_ptr<SyntaxLAndExp>)];

      // LOrExp
      char dummy30[sizeof (std::shared_ptr<SyntaxLOrExp>)];

      // LVal
      char dummy31[sizeof (std::shared_ptr<SyntaxLVal>)];

      // MulExp
      char dummy32[sizeof (std::shared_ptr<SyntaxMulExp>)];

      // Number
      char dummy33[sizeof (std::shared_ptr<SyntaxNumber>)];

      // IndexList
      char dummy34[sizeof (std::shared_ptr<SyntaxParamArrayExpList>)];

      // PrimaryExp
      char dummy35[sizeof (std::shared_ptr<SyntaxPrimaryExp>)];

      // RelExp
      char dummy36[sizeof (std::shared_ptr<SyntaxRelExp>)];

      // ReturnStmt
      char dummy37[sizeof (std::shared_ptr<SyntaxReturnStmt>)];

      // SelectStmt
      char dummy38[sizeof (std::shared_ptr<SyntaxSelectStmt>)];

      // Stmt
      char dummy39[sizeof (std::shared_ptr<SyntaxStmt>)];

      // UnaryExp
      char dummy40[sizeof (std::shared_ptr<SyntaxUnaryExp>)];

      // VarDecl
      char dummy41[sizeof (std::shared_ptr<SyntaxVarDecl>)];

      // VarDef
      char dummy42[sizeof (std::shared_ptr<SyntaxVarDef>)];

      // VarDefList
      char dummy43[sizeof (std::shared_ptr<SyntaxVarDefList>)];

      // TOK_IDENTIFIER
      char dummy44[sizeof (std::string)];

      // BType
      // FuncType
      char dummy45[sizeof (type_specifier)];

      // UnaryOp
      char dummy46[sizeof (unaryop)];
};

    /// Symbol semantic values.
    typedef variant<sizeof (union_type)> semantic_type;
#else
    typedef YYSTYPE semantic_type;
#endif
    /// Symbol locations.
    typedef location location_type;

    /// Syntax errors thrown from user actions.
    struct syntax_error : std::runtime_error
    {
      syntax_error (const location_type& l, const std::string& m);
      location_type location;
    };

    /// Tokens.
    struct token
    {
      enum yytokentype
      {
        TOK_END = 258,
        TOK_ERROR = 259,
        TOK_ADD = 260,
        TOK_SUB = 261,
        TOK_MUL = 262,
        TOK_DIV = 263,
        TOK_MOD = 264,
        TOK_LT = 265,
        TOK_LTE = 266,
        TOK_GT = 267,
        TOK_GTE = 268,
        TOK_EQ = 269,
        TOK_NEQ = 270,
        TOK_ASSIGN = 271,
        TOK_SEMICOLIN = 272,
        TOK_COMMA = 273,
        TOK_LPARENTHESE = 274,
        TOK_RPARENTHESE = 275,
        TOK_LBRACKET = 276,
        TOK_RBRACKET = 277,
        TOK_LBRACE = 278,
        TOK_RBRACE = 279,
        TOK_ELSE = 280,
        TOK_IF = 281,
        TOK_INT = 282,
        TOK_VOID = 283,
        TOK_RETURN = 284,
        TOK_WHILE = 285,
        TOK_IDENTIFIER = 286,
        TOK_NUMBER = 287,
        TOK_ARRAY = 288,
        TOK_LETTER = 289,
        TOK_EOL = 290,
        TOK_COMMENT = 291,
        TOK_BLANK = 292,
        TOK_CONST = 293,
        TOK_BREAK = 294,
        TOK_CONTINUE = 295,
        TOK_NOT = 296,
        TOK_AND = 297,
        TOK_OR = 298
      };
    };

    /// (External) token type, as returned by yylex.
    typedef token::yytokentype token_type;

    /// Symbol type: an internal symbol number.
    typedef int symbol_number_type;

    /// The symbol type number to denote an empty symbol.
    enum { empty_symbol = -2 };

    /// Internal symbol number for tokens (subsumed by symbol_number_type).
    typedef unsigned char token_number_type;

    /// A complete symbol.
    ///
    /// Expects its Base type to provide access to the symbol type
    /// via type_get ().
    ///
    /// Provide access to semantic value and location.
    template <typename Base>
    struct basic_symbol : Base
    {
      /// Alias to Base.
      typedef Base super_type;

      /// Default constructor.
      basic_symbol ();

      /// Move or copy constructor.
      basic_symbol (YY_RVREF (basic_symbol) other);


      /// Constructor for valueless symbols, and symbols from each type.
      basic_symbol (typename Base::kind_type t, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (int) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxAddExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxArrayConstExpList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxAssignStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlock>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlockItem>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBlockItemList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxBreakStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCallee>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCompUnit>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxCond>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDecl>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDef>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstDefList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstInitVal>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxConstInitValList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxContinueStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxDeclDef>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxEqExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxExpList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncDef>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncFParam>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxFuncFParamList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxInitVal>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxInitValList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxIterationStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLAndExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLOrExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxLVal>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxMulExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxNumber>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxParamArrayExpList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxPrimaryExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxRelExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxReturnStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxSelectStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxStmt>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxUnaryExp>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDecl>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDef>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::shared_ptr<SyntaxVarDefList>) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (std::string) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (type_specifier) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (unaryop) v, YY_RVREF (location_type) l);


      /// Destroy the symbol.
      ~basic_symbol ();

      /// Destroy contents, and record that is empty.
      void clear ();

      /// Whether empty.
      bool empty () const;

      /// Destructive move, \a s is emptied into this.
      void move (basic_symbol& s);

      /// The semantic value.
      semantic_type value;

      /// The location.
      location_type location;

    private:
#if defined __cplusplus && __cplusplus < 201103L
      /// Assignment operator.
      basic_symbol& operator= (const basic_symbol& other);
#endif
    };

    /// Type access provider for token (enum) based symbols.
    struct by_type
    {
      /// Default constructor.
      by_type ();

      /// Copy constructor.
      by_type (const by_type& other);

      /// The symbol type as needed by the constructor.
      typedef token_type kind_type;

      /// Constructor from (external) token numbers.
      by_type (kind_type t);

      /// Record that this symbol is empty.
      void clear ();

      /// Steal the symbol type from \a that.
      void move (by_type& that);

      /// The (internal) type number (corresponding to \a type).
      /// \a empty when empty.
      symbol_number_type type_get () const;

      /// The token.
      token_type token () const;

      /// The symbol type.
      /// \a empty_symbol when empty.
      /// An int, not token_number_type, to be able to store empty_symbol.
      int type;
    };

    /// "External" symbols: returned by the scanner.
    typedef basic_symbol<by_type> symbol_type;

    /// Build a parser object.
    sysy_parser (sysyFlexLexer* scanner_yyarg);
    virtual ~sysy_parser ();

    /// Parse.  An alias for parse ().
    /// \returns  0 iff parsing succeeded.
    int operator() ();

    /// Parse.
    /// \returns  0 iff parsing succeeded.
    virtual int parse ();

#if YYDEBUG
    /// The current debugging stream.
    std::ostream& debug_stream () const YY_ATTRIBUTE_PURE;
    /// Set the current debugging stream.
    void set_debug_stream (std::ostream &);

    /// Type for debugging levels.
    typedef int debug_level_type;
    /// The current debugging level.
    debug_level_type debug_level () const YY_ATTRIBUTE_PURE;
    /// Set the current debugging level.
    void set_debug_level (debug_level_type l);
#endif

    /// Report a syntax error.
    /// \param loc    where the syntax error is found.
    /// \param msg    a description of the syntax error.
    virtual void error (const location_type& loc, const std::string& msg);

    /// Report a syntax error.
    void error (const syntax_error& err);

    // Symbol constructors declarations.
    static
    symbol_type
    make_TOK_END (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_ERROR (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_ADD (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_SUB (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_MUL (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_DIV (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_MOD (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LT (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LTE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_GT (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_GTE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_EQ (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_NEQ (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_ASSIGN (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_SEMICOLIN (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_COMMA (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LPARENTHESE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_RPARENTHESE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LBRACKET (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_RBRACKET (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LBRACE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_RBRACE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_ELSE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_IF (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_INT (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_VOID (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_RETURN (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_WHILE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_IDENTIFIER (YY_COPY (std::string) v, YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_NUMBER (YY_COPY (int) v, YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_ARRAY (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_LETTER (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_EOL (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_COMMENT (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_BLANK (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_CONST (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_BREAK (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_CONTINUE (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_NOT (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_AND (YY_COPY (location_type) l);

    static
    symbol_type
    make_TOK_OR (YY_COPY (location_type) l);



  private:
    /// This class is not copyable.
    sysy_parser (const sysy_parser&);
    sysy_parser& operator= (const sysy_parser&);

    /// State numbers.
    typedef int state_type;

    /// Generate an error message.
    /// \param yystate   the state where the error occurred.
    /// \param yyla      the lookahead token.
    virtual std::string yysyntax_error_ (state_type yystate,
                                         const symbol_type& yyla) const;

    /// Compute post-reduction state.
    /// \param yystate   the current state
    /// \param yysym     the nonterminal to push on the stack
    state_type yy_lr_goto_state_ (state_type yystate, int yysym);

    /// Whether the given \c yypact_ value indicates a defaulted state.
    /// \param yyvalue   the value to check
    static bool yy_pact_value_is_default_ (int yyvalue);

    /// Whether the given \c yytable_ value indicates a syntax error.
    /// \param yyvalue   the value to check
    static bool yy_table_value_is_error_ (int yyvalue);

    static const short yypact_ninf_;
    static const signed char yytable_ninf_;

    /// Convert a scanner token number \a t to a symbol number.
    static token_number_type yytranslate_ (int t);

    // Tables.
  // YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
  // STATE-NUM.
  static const short yypact_[];

  // YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
  // Performed when YYTABLE does not specify something else to do.  Zero
  // means the default is an error.
  static const unsigned char yydefact_[];

  // YYPGOTO[NTERM-NUM].
  static const short yypgoto_[];

  // YYDEFGOTO[NTERM-NUM].
  static const short yydefgoto_[];

  // YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
  // positive, shift that token.  If negative, reduce the rule whose
  // number is the opposite.  If YYTABLE_NINF, syntax error.
  static const unsigned char yytable_[];

  static const short yycheck_[];

  // YYSTOS[STATE-NUM] -- The (internal number of the) accessing
  // symbol of state STATE-NUM.
  static const unsigned char yystos_[];

  // YYR1[YYN] -- Symbol number of symbol that rule YYN derives.
  static const unsigned char yyr1_[];

  // YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.
  static const unsigned char yyr2_[];


#if YYDEBUG
    /// For a symbol, its name in clear.
    static const char* const yytname_[];

  // YYRLINE[YYN] -- Source line where rule number YYN was defined.
  static const unsigned short yyrline_[];
    /// Report on the debug stream that the rule \a r is going to be reduced.
    virtual void yy_reduce_print_ (int r);
    /// Print the state stack on the debug stream.
    virtual void yystack_print_ ();

    // Debugging.
    int yydebug_;
    std::ostream* yycdebug_;

    /// \brief Display a symbol type, value and location.
    /// \param yyo    The output stream.
    /// \param yysym  The symbol.
    template <typename Base>
    void yy_print_ (std::ostream& yyo, const basic_symbol<Base>& yysym) const;
#endif

    /// \brief Reclaim the memory associated to a symbol.
    /// \param yymsg     Why this token is reclaimed.
    ///                  If null, print nothing.
    /// \param yysym     The symbol.
    template <typename Base>
    void yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const;

  private:
    /// Type access provider for state based symbols.
    struct by_state
    {
      /// Default constructor.
      by_state ();

      /// The symbol type as needed by the constructor.
      typedef state_type kind_type;

      /// Constructor.
      by_state (kind_type s);

      /// Copy constructor.
      by_state (const by_state& other);

      /// Record that this symbol is empty.
      void clear ();

      /// Steal the symbol type from \a that.
      void move (by_state& that);

      /// The (internal) type number (corresponding to \a state).
      /// \a empty_symbol when empty.
      symbol_number_type type_get () const;

      /// The state number used to denote an empty symbol.
      enum { empty_state = -1 };

      /// The state.
      /// \a empty when empty.
      state_type state;
    };

    /// "Internal" symbol: element of the stack.
    struct stack_symbol_type : basic_symbol<by_state>
    {
      /// Superclass.
      typedef basic_symbol<by_state> super_type;
      /// Construct an empty symbol.
      stack_symbol_type ();
      /// Move or copy construction.
      stack_symbol_type (YY_RVREF (stack_symbol_type) that);
      /// Steal the contents from \a sym to build this.
      stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) sym);
#if defined __cplusplus && __cplusplus < 201103L
      /// Assignment, needed by push_back by some old implementations.
      /// Moves the contents of that.
      stack_symbol_type& operator= (stack_symbol_type& that);
#endif
    };

    /// Stack type.
    typedef stack<stack_symbol_type> stack_type;

    /// The stack.
    stack_type yystack_;

    /// Push a new state on the stack.
    /// \param m    a debug message to display
    ///             if null, no trace is output.
    /// \param sym  the symbol
    /// \warning the contents of \a s.value is stolen.
    void yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym);

    /// Push a new look ahead token on the state on the stack.
    /// \param m    a debug message to display
    ///             if null, no trace is output.
    /// \param s    the state
    /// \param sym  the symbol (for its value and location).
    /// \warning the contents of \a sym.value is stolen.
    void yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym);

    /// Pop \a n symbols from the stack.
    void yypop_ (int n = 1);

    /// Constants.
    enum
    {
      yyeof_ = 0,
      yylast_ = 266,     ///< Last index in yytable_.
      yynnts_ = 46,  ///< Number of nonterminal symbols.
      yyfinal_ = 12, ///< Termination state number.
      yyterror_ = 1,
      yyerrcode_ = 256,
      yyntokens_ = 44  ///< Number of tokens.
    };


    // User arguments.
    sysyFlexLexer* scanner;
  };



} // yy
#line 1202 "./build/sysy_parser.hh" // lalr1.cc:403




#endif // !YY_YY_BUILD_SYSY_PARSER_HH_INCLUDED
