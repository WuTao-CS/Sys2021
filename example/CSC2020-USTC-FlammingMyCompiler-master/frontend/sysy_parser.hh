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
 ** \file sysy_parser.hh
 ** Define the yy::parser class.
 */

// C++ LALR(1) parser skeleton written by Akim Demaille.

// Undocumented macros, especially those whose name start with YY_,
// are private implementation details.  Do not rely on them.

#ifndef YY_YY_SYSY_PARSER_HH_INCLUDED
# define YY_YY_SYSY_PARSER_HH_INCLUDED
// //                    "%code requires" blocks.
#line 11 "sysy_parser.yy" // lalr1.cc:403

#include <string>
#include "syntax_tree.hh"
class sysy_driver;

#line 54 "sysy_parser.hh" // lalr1.cc:403

# include <cassert>
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
#include <typeinfo>
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
#line 148 "sysy_parser.hh" // lalr1.cc:403

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
      , yytypeid_ (YY_NULLPTR)
    {}

    /// Construct and fill.
    template <typename T>
    variant (YY_RVREF (T) t)
      : yytypeid_ (&typeid (T))
    {
      YYASSERT (sizeof (T) <= S);
      new (yyas_<T> ()) T (YY_MOVE (t));
    }

    /// Destruction, allowed only if empty.
    ~variant ()
    {
      YYASSERT (!yytypeid_);
    }

    /// Instantiate an empty \a T in here.
    template <typename T>
    T&
    emplace ()
    {
      YYASSERT (!yytypeid_);
      YYASSERT (sizeof (T) <= S);
      yytypeid_ = & typeid (T);
      return *new (yyas_<T> ()) T ();
    }

# if defined __cplusplus && 201103L <= __cplusplus
    /// Instantiate a \a T in here from \a t.
    template <typename T, typename U>
    T&
    emplace (U&& u)
    {
      YYASSERT (!yytypeid_);
      YYASSERT (sizeof (T) <= S);
      yytypeid_ = & typeid (T);
      return *new (yyas_<T> ()) T (std::forward <U>(u));
    }
# else
    /// Instantiate a \a T in here from \a t.
    template <typename T>
    T&
    emplace (const T& t)
    {
      YYASSERT (!yytypeid_);
      YYASSERT (sizeof (T) <= S);
      yytypeid_ = & typeid (T);
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
      YYASSERT (yytypeid_);
      YYASSERT (*yytypeid_ == typeid (T));
      YYASSERT (sizeof (T) <= S);
      return *yyas_<T> ();
    }

    /// Const accessor to a built \a T (for %printer).
    template <typename T>
    const T&
    as () const
    {
      YYASSERT (yytypeid_);
      YYASSERT (*yytypeid_ == typeid (T));
      YYASSERT (sizeof (T) <= S);
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
      YYASSERT (yytypeid_);
      YYASSERT (*yytypeid_ == *other.yytypeid_);
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
      yytypeid_ = YY_NULLPTR;
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

    /// Whether the content is built: if defined, the name of the stored type.
    const std::type_info *yytypeid_;
  };


  /// A Bison parser.
  class sysy_parser
  {
  public:
#ifndef YYSTYPE
    /// An auxiliary type to compute the largest semantic type.
    union union_type
    {
      // AddExp
      char dummy1[sizeof (SyntaxAddExp*)];

      // ArrayConstExpList
      char dummy2[sizeof (SyntaxArrayConstExpList*)];

      // ArrayExpList
      char dummy3[sizeof (SyntaxArrayExpList*)];

      // AssignStmt
      char dummy4[sizeof (SyntaxAssignStmt*)];

      // Block
      char dummy5[sizeof (SyntaxBlock*)];

      // BlockItem
      char dummy6[sizeof (SyntaxBlockItem*)];

      // BlockItemList
      char dummy7[sizeof (SyntaxBlockItemList*)];

      // BreakStmt
      char dummy8[sizeof (SyntaxBreakStmt*)];

      // Callee
      char dummy9[sizeof (SyntaxCallee*)];

      // CompUnit
      char dummy10[sizeof (SyntaxCompUnit*)];

      // Cond
      char dummy11[sizeof (SyntaxCond*)];

      // ConstDecl
      char dummy12[sizeof (SyntaxConstDecl*)];

      // ConstDef
      char dummy13[sizeof (SyntaxConstDef*)];

      // ConstDefList
      char dummy14[sizeof (SyntaxConstDefList*)];

      // ConstExp
      char dummy15[sizeof (SyntaxConstExp*)];

      // ConstInitVal
      char dummy16[sizeof (SyntaxConstInitVal*)];

      // ConstInitValList
      char dummy17[sizeof (SyntaxConstInitValList*)];

      // ContinueStmt
      char dummy18[sizeof (SyntaxContinueStmt*)];

      // DeclDef
      char dummy19[sizeof (SyntaxDeclDef*)];

      // EqExp
      char dummy20[sizeof (SyntaxEqExp*)];

      // Exp
      char dummy21[sizeof (SyntaxExp*)];

      // ExpList
      char dummy22[sizeof (SyntaxExpList*)];

      // FuncDef
      char dummy23[sizeof (SyntaxFuncDef*)];

      // FuncFParam
      char dummy24[sizeof (SyntaxFuncFParam*)];

      // FuncFParamList
      char dummy25[sizeof (SyntaxFuncFParamList*)];

      // InitVal
      char dummy26[sizeof (SyntaxInitVal*)];

      // InitValList
      char dummy27[sizeof (SyntaxInitValList*)];

      // IterationStmt
      char dummy28[sizeof (SyntaxIterationStmt*)];

      // LAndExp
      char dummy29[sizeof (SyntaxLAndExp*)];

      // LOrExp
      char dummy30[sizeof (SyntaxLOrExp*)];

      // LVal
      char dummy31[sizeof (SyntaxLVal*)];

      // MulExp
      char dummy32[sizeof (SyntaxMulExp*)];

      // Number
      char dummy33[sizeof (SyntaxNumber*)];

      // ParamArrayExpList
      char dummy34[sizeof (SyntaxParamArrayExpList*)];

      // PrimaryExp
      char dummy35[sizeof (SyntaxPrimaryExp*)];

      // RelExp
      char dummy36[sizeof (SyntaxRelExp*)];

      // ReturnStmt
      char dummy37[sizeof (SyntaxReturnStmt*)];

      // SelectStmt
      char dummy38[sizeof (SyntaxSelectStmt*)];

      // Stmt
      char dummy39[sizeof (SyntaxStmt*)];

      // UnaryExp
      char dummy40[sizeof (SyntaxUnaryExp*)];

      // VarDecl
      char dummy41[sizeof (SyntaxVarDecl*)];

      // VarDef
      char dummy42[sizeof (SyntaxVarDef*)];

      // VarDefList
      char dummy43[sizeof (SyntaxVarDefList*)];

      // NUMBER
      char dummy44[sizeof (int)];

      // IDENTIFIER
      char dummy45[sizeof (std::string)];

      // DefType
      char dummy46[sizeof (type_specifier)];

      // UnaryOp
      char dummy47[sizeof (unaryop)];
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
        TOK_END = 299,
        TOK_ERROR = 258,
        TOK_ADD = 259,
        TOK_SUB = 260,
        TOK_MUL = 261,
        TOK_DIV = 262,
        TOK_LT = 263,
        TOK_LTE = 264,
        TOK_GT = 265,
        TOK_GTE = 266,
        TOK_EQ = 267,
        TOK_NEQ = 268,
        TOK_ASSIN = 269,
        TOK_SEMICOLON = 270,
        TOK_COMMA = 271,
        TOK_LPARENTHESE = 272,
        TOK_RPARENTHESE = 273,
        TOK_LBRACKET = 274,
        TOK_RBRACKET = 275,
        TOK_LBRACE = 276,
        TOK_RBRACE = 277,
        TOK_ELSE = 278,
        TOK_IF = 279,
        TOK_INT = 280,
        TOK_RETURN = 281,
        TOK_VOID = 282,
        TOK_WHILE = 283,
        TOK_IDENTIFIER = 284,
        TOK_NUMBER = 285,
        TOK_ARRAY = 286,
        TOK_LETTER = 287,
        TOK_EOL = 288,
        TOK_COMMENT = 289,
        TOK_BLANK = 290,
        TOK_CONST = 291,
        TOK_BREAK = 292,
        TOK_CONTINUE = 293,
        TOK_NOT = 294,
        TOK_AND = 295,
        TOK_OR = 296,
        TOK_MOD = 297
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
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxAddExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxArrayConstExpList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxArrayExpList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxAssignStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlock*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlockItem*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlockItemList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBreakStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCallee*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCompUnit*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCond*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDecl*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDef*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDefList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstInitVal*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstInitValList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxContinueStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxDeclDef*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxEqExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxExpList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncDef*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncFParam*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncFParamList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxInitVal*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxInitValList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxIterationStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLAndExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLOrExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLVal*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxMulExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxNumber*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxParamArrayExpList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxPrimaryExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxRelExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxReturnStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxSelectStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxStmt*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxUnaryExp*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDecl*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDef*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDefList*) v, YY_RVREF (location_type) l);
      basic_symbol (typename Base::kind_type t, YY_RVREF (int) v, YY_RVREF (location_type) l);
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
    sysy_parser (sysy_driver& driver_yyarg);
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
    make_END (YY_COPY (location_type) l);

    static
    symbol_type
    make_ERROR (YY_COPY (location_type) l);

    static
    symbol_type
    make_ADD (YY_COPY (location_type) l);

    static
    symbol_type
    make_SUB (YY_COPY (location_type) l);

    static
    symbol_type
    make_MUL (YY_COPY (location_type) l);

    static
    symbol_type
    make_DIV (YY_COPY (location_type) l);

    static
    symbol_type
    make_LT (YY_COPY (location_type) l);

    static
    symbol_type
    make_LTE (YY_COPY (location_type) l);

    static
    symbol_type
    make_GT (YY_COPY (location_type) l);

    static
    symbol_type
    make_GTE (YY_COPY (location_type) l);

    static
    symbol_type
    make_EQ (YY_COPY (location_type) l);

    static
    symbol_type
    make_NEQ (YY_COPY (location_type) l);

    static
    symbol_type
    make_ASSIN (YY_COPY (location_type) l);

    static
    symbol_type
    make_SEMICOLON (YY_COPY (location_type) l);

    static
    symbol_type
    make_COMMA (YY_COPY (location_type) l);

    static
    symbol_type
    make_LPARENTHESE (YY_COPY (location_type) l);

    static
    symbol_type
    make_RPARENTHESE (YY_COPY (location_type) l);

    static
    symbol_type
    make_LBRACKET (YY_COPY (location_type) l);

    static
    symbol_type
    make_RBRACKET (YY_COPY (location_type) l);

    static
    symbol_type
    make_LBRACE (YY_COPY (location_type) l);

    static
    symbol_type
    make_RBRACE (YY_COPY (location_type) l);

    static
    symbol_type
    make_ELSE (YY_COPY (location_type) l);

    static
    symbol_type
    make_IF (YY_COPY (location_type) l);

    static
    symbol_type
    make_INT (YY_COPY (location_type) l);

    static
    symbol_type
    make_RETURN (YY_COPY (location_type) l);

    static
    symbol_type
    make_VOID (YY_COPY (location_type) l);

    static
    symbol_type
    make_WHILE (YY_COPY (location_type) l);

    static
    symbol_type
    make_IDENTIFIER (YY_COPY (std::string) v, YY_COPY (location_type) l);

    static
    symbol_type
    make_NUMBER (YY_COPY (int) v, YY_COPY (location_type) l);

    static
    symbol_type
    make_ARRAY (YY_COPY (location_type) l);

    static
    symbol_type
    make_LETTER (YY_COPY (location_type) l);

    static
    symbol_type
    make_EOL (YY_COPY (location_type) l);

    static
    symbol_type
    make_COMMENT (YY_COPY (location_type) l);

    static
    symbol_type
    make_BLANK (YY_COPY (location_type) l);

    static
    symbol_type
    make_CONST (YY_COPY (location_type) l);

    static
    symbol_type
    make_BREAK (YY_COPY (location_type) l);

    static
    symbol_type
    make_CONTINUE (YY_COPY (location_type) l);

    static
    symbol_type
    make_NOT (YY_COPY (location_type) l);

    static
    symbol_type
    make_AND (YY_COPY (location_type) l);

    static
    symbol_type
    make_OR (YY_COPY (location_type) l);

    static
    symbol_type
    make_MOD (YY_COPY (location_type) l);



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

    static const signed char yypact_ninf_;
    static const signed char yytable_ninf_;

    /// Convert a scanner token number \a t to a symbol number.
    static token_number_type yytranslate_ (token_type t);

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


    /// Convert the symbol name \a n to a form suitable for a diagnostic.
    static std::string yytnamerr_ (const char *n);


    /// For a symbol, its name in clear.
    static const char* const yytname_[];
#if YYDEBUG
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
      yylast_ = 213,     ///< Last index in yytable_.
      yynnts_ = 47,  ///< Number of nonterminal symbols.
      yyfinal_ = 12, ///< Termination state number.
      yyterror_ = 1,
      yyerrcode_ = 256,
      yyntokens_ = 44  ///< Number of tokens.
    };


    // User arguments.
    sysy_driver& driver;
  };

  // Symbol number corresponding to token number t.
  inline
  sysy_parser::token_number_type
  sysy_parser::yytranslate_ (token_type t)
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
       2,     2,     2,     2,     2,     2,     1,     2,     4,     5,
       6,     7,     8,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    42,    43,     2,     3
    };
    const unsigned user_token_number_max_ = 299;
    const token_number_type undef_token_ = 2;

    if (static_cast<int> (t) <= yyeof_)
      return yyeof_;
    else if (static_cast<unsigned> (t) <= user_token_number_max_)
      return translate_table[t];
    else
      return undef_token_;
  }

  inline
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
      case 85: // AddExp
        value.YY_MOVE_OR_COPY< SyntaxAddExp* > (YY_MOVE (other.value));
        break;

      case 51: // ArrayConstExpList
        value.YY_MOVE_OR_COPY< SyntaxArrayConstExpList* > (YY_MOVE (other.value));
        break;

      case 77: // ArrayExpList
        value.YY_MOVE_OR_COPY< SyntaxArrayExpList* > (YY_MOVE (other.value));
        break;

      case 70: // AssignStmt
        value.YY_MOVE_OR_COPY< SyntaxAssignStmt* > (YY_MOVE (other.value));
        break;

      case 64: // Block
        value.YY_MOVE_OR_COPY< SyntaxBlock* > (YY_MOVE (other.value));
        break;

      case 66: // BlockItem
        value.YY_MOVE_OR_COPY< SyntaxBlockItem* > (YY_MOVE (other.value));
        break;

      case 65: // BlockItemList
        value.YY_MOVE_OR_COPY< SyntaxBlockItemList* > (YY_MOVE (other.value));
        break;

      case 68: // BreakStmt
        value.YY_MOVE_OR_COPY< SyntaxBreakStmt* > (YY_MOVE (other.value));
        break;

      case 81: // Callee
        value.YY_MOVE_OR_COPY< SyntaxCallee* > (YY_MOVE (other.value));
        break;

      case 46: // CompUnit
        value.YY_MOVE_OR_COPY< SyntaxCompUnit* > (YY_MOVE (other.value));
        break;

      case 75: // Cond
        value.YY_MOVE_OR_COPY< SyntaxCond* > (YY_MOVE (other.value));
        break;

      case 48: // ConstDecl
        value.YY_MOVE_OR_COPY< SyntaxConstDecl* > (YY_MOVE (other.value));
        break;

      case 50: // ConstDef
        value.YY_MOVE_OR_COPY< SyntaxConstDef* > (YY_MOVE (other.value));
        break;

      case 49: // ConstDefList
        value.YY_MOVE_OR_COPY< SyntaxConstDefList* > (YY_MOVE (other.value));
        break;

      case 90: // ConstExp
        value.YY_MOVE_OR_COPY< SyntaxConstExp* > (YY_MOVE (other.value));
        break;

      case 52: // ConstInitVal
        value.YY_MOVE_OR_COPY< SyntaxConstInitVal* > (YY_MOVE (other.value));
        break;

      case 53: // ConstInitValList
        value.YY_MOVE_OR_COPY< SyntaxConstInitValList* > (YY_MOVE (other.value));
        break;

      case 69: // ContinueStmt
        value.YY_MOVE_OR_COPY< SyntaxContinueStmt* > (YY_MOVE (other.value));
        break;

      case 47: // DeclDef
        value.YY_MOVE_OR_COPY< SyntaxDeclDef* > (YY_MOVE (other.value));
        break;

      case 87: // EqExp
        value.YY_MOVE_OR_COPY< SyntaxEqExp* > (YY_MOVE (other.value));
        break;

      case 74: // Exp
        value.YY_MOVE_OR_COPY< SyntaxExp* > (YY_MOVE (other.value));
        break;

      case 83: // ExpList
        value.YY_MOVE_OR_COPY< SyntaxExpList* > (YY_MOVE (other.value));
        break;

      case 59: // FuncDef
        value.YY_MOVE_OR_COPY< SyntaxFuncDef* > (YY_MOVE (other.value));
        break;

      case 62: // FuncFParam
        value.YY_MOVE_OR_COPY< SyntaxFuncFParam* > (YY_MOVE (other.value));
        break;

      case 61: // FuncFParamList
        value.YY_MOVE_OR_COPY< SyntaxFuncFParamList* > (YY_MOVE (other.value));
        break;

      case 57: // InitVal
        value.YY_MOVE_OR_COPY< SyntaxInitVal* > (YY_MOVE (other.value));
        break;

      case 58: // InitValList
        value.YY_MOVE_OR_COPY< SyntaxInitValList* > (YY_MOVE (other.value));
        break;

      case 72: // IterationStmt
        value.YY_MOVE_OR_COPY< SyntaxIterationStmt* > (YY_MOVE (other.value));
        break;

      case 88: // LAndExp
        value.YY_MOVE_OR_COPY< SyntaxLAndExp* > (YY_MOVE (other.value));
        break;

      case 89: // LOrExp
        value.YY_MOVE_OR_COPY< SyntaxLOrExp* > (YY_MOVE (other.value));
        break;

      case 76: // LVal
        value.YY_MOVE_OR_COPY< SyntaxLVal* > (YY_MOVE (other.value));
        break;

      case 84: // MulExp
        value.YY_MOVE_OR_COPY< SyntaxMulExp* > (YY_MOVE (other.value));
        break;

      case 79: // Number
        value.YY_MOVE_OR_COPY< SyntaxNumber* > (YY_MOVE (other.value));
        break;

      case 63: // ParamArrayExpList
        value.YY_MOVE_OR_COPY< SyntaxParamArrayExpList* > (YY_MOVE (other.value));
        break;

      case 78: // PrimaryExp
        value.YY_MOVE_OR_COPY< SyntaxPrimaryExp* > (YY_MOVE (other.value));
        break;

      case 86: // RelExp
        value.YY_MOVE_OR_COPY< SyntaxRelExp* > (YY_MOVE (other.value));
        break;

      case 73: // ReturnStmt
        value.YY_MOVE_OR_COPY< SyntaxReturnStmt* > (YY_MOVE (other.value));
        break;

      case 71: // SelectStmt
        value.YY_MOVE_OR_COPY< SyntaxSelectStmt* > (YY_MOVE (other.value));
        break;

      case 67: // Stmt
        value.YY_MOVE_OR_COPY< SyntaxStmt* > (YY_MOVE (other.value));
        break;

      case 80: // UnaryExp
        value.YY_MOVE_OR_COPY< SyntaxUnaryExp* > (YY_MOVE (other.value));
        break;

      case 54: // VarDecl
        value.YY_MOVE_OR_COPY< SyntaxVarDecl* > (YY_MOVE (other.value));
        break;

      case 56: // VarDef
        value.YY_MOVE_OR_COPY< SyntaxVarDef* > (YY_MOVE (other.value));
        break;

      case 55: // VarDefList
        value.YY_MOVE_OR_COPY< SyntaxVarDefList* > (YY_MOVE (other.value));
        break;

      case 31: // NUMBER
        value.YY_MOVE_OR_COPY< int > (YY_MOVE (other.value));
        break;

      case 30: // IDENTIFIER
        value.YY_MOVE_OR_COPY< std::string > (YY_MOVE (other.value));
        break;

      case 60: // DefType
        value.YY_MOVE_OR_COPY< type_specifier > (YY_MOVE (other.value));
        break;

      case 82: // UnaryOp
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
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxAddExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxArrayConstExpList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxArrayExpList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxAssignStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlock*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlockItem*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBlockItemList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxBreakStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCallee*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCompUnit*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxCond*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDecl*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDef*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstDefList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstInitVal*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxConstInitValList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxContinueStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxDeclDef*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxEqExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxExpList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncDef*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncFParam*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxFuncFParamList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxInitVal*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxInitValList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxIterationStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLAndExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLOrExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxLVal*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxMulExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxNumber*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxParamArrayExpList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxPrimaryExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxRelExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxReturnStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxSelectStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxStmt*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxUnaryExp*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDecl*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDef*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (SyntaxVarDefList*) v, YY_RVREF (location_type) l)
    : Base (t)
    , value (YY_MOVE (v))
    , location (YY_MOVE (l))
  {}

  template <typename Base>
  sysy_parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (int) v, YY_RVREF (location_type) l)
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
      case 85: // AddExp
        value.template destroy< SyntaxAddExp* > ();
        break;

      case 51: // ArrayConstExpList
        value.template destroy< SyntaxArrayConstExpList* > ();
        break;

      case 77: // ArrayExpList
        value.template destroy< SyntaxArrayExpList* > ();
        break;

      case 70: // AssignStmt
        value.template destroy< SyntaxAssignStmt* > ();
        break;

      case 64: // Block
        value.template destroy< SyntaxBlock* > ();
        break;

      case 66: // BlockItem
        value.template destroy< SyntaxBlockItem* > ();
        break;

      case 65: // BlockItemList
        value.template destroy< SyntaxBlockItemList* > ();
        break;

      case 68: // BreakStmt
        value.template destroy< SyntaxBreakStmt* > ();
        break;

      case 81: // Callee
        value.template destroy< SyntaxCallee* > ();
        break;

      case 46: // CompUnit
        value.template destroy< SyntaxCompUnit* > ();
        break;

      case 75: // Cond
        value.template destroy< SyntaxCond* > ();
        break;

      case 48: // ConstDecl
        value.template destroy< SyntaxConstDecl* > ();
        break;

      case 50: // ConstDef
        value.template destroy< SyntaxConstDef* > ();
        break;

      case 49: // ConstDefList
        value.template destroy< SyntaxConstDefList* > ();
        break;

      case 90: // ConstExp
        value.template destroy< SyntaxConstExp* > ();
        break;

      case 52: // ConstInitVal
        value.template destroy< SyntaxConstInitVal* > ();
        break;

      case 53: // ConstInitValList
        value.template destroy< SyntaxConstInitValList* > ();
        break;

      case 69: // ContinueStmt
        value.template destroy< SyntaxContinueStmt* > ();
        break;

      case 47: // DeclDef
        value.template destroy< SyntaxDeclDef* > ();
        break;

      case 87: // EqExp
        value.template destroy< SyntaxEqExp* > ();
        break;

      case 74: // Exp
        value.template destroy< SyntaxExp* > ();
        break;

      case 83: // ExpList
        value.template destroy< SyntaxExpList* > ();
        break;

      case 59: // FuncDef
        value.template destroy< SyntaxFuncDef* > ();
        break;

      case 62: // FuncFParam
        value.template destroy< SyntaxFuncFParam* > ();
        break;

      case 61: // FuncFParamList
        value.template destroy< SyntaxFuncFParamList* > ();
        break;

      case 57: // InitVal
        value.template destroy< SyntaxInitVal* > ();
        break;

      case 58: // InitValList
        value.template destroy< SyntaxInitValList* > ();
        break;

      case 72: // IterationStmt
        value.template destroy< SyntaxIterationStmt* > ();
        break;

      case 88: // LAndExp
        value.template destroy< SyntaxLAndExp* > ();
        break;

      case 89: // LOrExp
        value.template destroy< SyntaxLOrExp* > ();
        break;

      case 76: // LVal
        value.template destroy< SyntaxLVal* > ();
        break;

      case 84: // MulExp
        value.template destroy< SyntaxMulExp* > ();
        break;

      case 79: // Number
        value.template destroy< SyntaxNumber* > ();
        break;

      case 63: // ParamArrayExpList
        value.template destroy< SyntaxParamArrayExpList* > ();
        break;

      case 78: // PrimaryExp
        value.template destroy< SyntaxPrimaryExp* > ();
        break;

      case 86: // RelExp
        value.template destroy< SyntaxRelExp* > ();
        break;

      case 73: // ReturnStmt
        value.template destroy< SyntaxReturnStmt* > ();
        break;

      case 71: // SelectStmt
        value.template destroy< SyntaxSelectStmt* > ();
        break;

      case 67: // Stmt
        value.template destroy< SyntaxStmt* > ();
        break;

      case 80: // UnaryExp
        value.template destroy< SyntaxUnaryExp* > ();
        break;

      case 54: // VarDecl
        value.template destroy< SyntaxVarDecl* > ();
        break;

      case 56: // VarDef
        value.template destroy< SyntaxVarDef* > ();
        break;

      case 55: // VarDefList
        value.template destroy< SyntaxVarDefList* > ();
        break;

      case 31: // NUMBER
        value.template destroy< int > ();
        break;

      case 30: // IDENTIFIER
        value.template destroy< std::string > ();
        break;

      case 60: // DefType
        value.template destroy< type_specifier > ();
        break;

      case 82: // UnaryOp
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
      case 85: // AddExp
        value.move< SyntaxAddExp* > (YY_MOVE (s.value));
        break;

      case 51: // ArrayConstExpList
        value.move< SyntaxArrayConstExpList* > (YY_MOVE (s.value));
        break;

      case 77: // ArrayExpList
        value.move< SyntaxArrayExpList* > (YY_MOVE (s.value));
        break;

      case 70: // AssignStmt
        value.move< SyntaxAssignStmt* > (YY_MOVE (s.value));
        break;

      case 64: // Block
        value.move< SyntaxBlock* > (YY_MOVE (s.value));
        break;

      case 66: // BlockItem
        value.move< SyntaxBlockItem* > (YY_MOVE (s.value));
        break;

      case 65: // BlockItemList
        value.move< SyntaxBlockItemList* > (YY_MOVE (s.value));
        break;

      case 68: // BreakStmt
        value.move< SyntaxBreakStmt* > (YY_MOVE (s.value));
        break;

      case 81: // Callee
        value.move< SyntaxCallee* > (YY_MOVE (s.value));
        break;

      case 46: // CompUnit
        value.move< SyntaxCompUnit* > (YY_MOVE (s.value));
        break;

      case 75: // Cond
        value.move< SyntaxCond* > (YY_MOVE (s.value));
        break;

      case 48: // ConstDecl
        value.move< SyntaxConstDecl* > (YY_MOVE (s.value));
        break;

      case 50: // ConstDef
        value.move< SyntaxConstDef* > (YY_MOVE (s.value));
        break;

      case 49: // ConstDefList
        value.move< SyntaxConstDefList* > (YY_MOVE (s.value));
        break;

      case 90: // ConstExp
        value.move< SyntaxConstExp* > (YY_MOVE (s.value));
        break;

      case 52: // ConstInitVal
        value.move< SyntaxConstInitVal* > (YY_MOVE (s.value));
        break;

      case 53: // ConstInitValList
        value.move< SyntaxConstInitValList* > (YY_MOVE (s.value));
        break;

      case 69: // ContinueStmt
        value.move< SyntaxContinueStmt* > (YY_MOVE (s.value));
        break;

      case 47: // DeclDef
        value.move< SyntaxDeclDef* > (YY_MOVE (s.value));
        break;

      case 87: // EqExp
        value.move< SyntaxEqExp* > (YY_MOVE (s.value));
        break;

      case 74: // Exp
        value.move< SyntaxExp* > (YY_MOVE (s.value));
        break;

      case 83: // ExpList
        value.move< SyntaxExpList* > (YY_MOVE (s.value));
        break;

      case 59: // FuncDef
        value.move< SyntaxFuncDef* > (YY_MOVE (s.value));
        break;

      case 62: // FuncFParam
        value.move< SyntaxFuncFParam* > (YY_MOVE (s.value));
        break;

      case 61: // FuncFParamList
        value.move< SyntaxFuncFParamList* > (YY_MOVE (s.value));
        break;

      case 57: // InitVal
        value.move< SyntaxInitVal* > (YY_MOVE (s.value));
        break;

      case 58: // InitValList
        value.move< SyntaxInitValList* > (YY_MOVE (s.value));
        break;

      case 72: // IterationStmt
        value.move< SyntaxIterationStmt* > (YY_MOVE (s.value));
        break;

      case 88: // LAndExp
        value.move< SyntaxLAndExp* > (YY_MOVE (s.value));
        break;

      case 89: // LOrExp
        value.move< SyntaxLOrExp* > (YY_MOVE (s.value));
        break;

      case 76: // LVal
        value.move< SyntaxLVal* > (YY_MOVE (s.value));
        break;

      case 84: // MulExp
        value.move< SyntaxMulExp* > (YY_MOVE (s.value));
        break;

      case 79: // Number
        value.move< SyntaxNumber* > (YY_MOVE (s.value));
        break;

      case 63: // ParamArrayExpList
        value.move< SyntaxParamArrayExpList* > (YY_MOVE (s.value));
        break;

      case 78: // PrimaryExp
        value.move< SyntaxPrimaryExp* > (YY_MOVE (s.value));
        break;

      case 86: // RelExp
        value.move< SyntaxRelExp* > (YY_MOVE (s.value));
        break;

      case 73: // ReturnStmt
        value.move< SyntaxReturnStmt* > (YY_MOVE (s.value));
        break;

      case 71: // SelectStmt
        value.move< SyntaxSelectStmt* > (YY_MOVE (s.value));
        break;

      case 67: // Stmt
        value.move< SyntaxStmt* > (YY_MOVE (s.value));
        break;

      case 80: // UnaryExp
        value.move< SyntaxUnaryExp* > (YY_MOVE (s.value));
        break;

      case 54: // VarDecl
        value.move< SyntaxVarDecl* > (YY_MOVE (s.value));
        break;

      case 56: // VarDef
        value.move< SyntaxVarDef* > (YY_MOVE (s.value));
        break;

      case 55: // VarDefList
        value.move< SyntaxVarDefList* > (YY_MOVE (s.value));
        break;

      case 31: // NUMBER
        value.move< int > (YY_MOVE (s.value));
        break;

      case 30: // IDENTIFIER
        value.move< std::string > (YY_MOVE (s.value));
        break;

      case 60: // DefType
        value.move< type_specifier > (YY_MOVE (s.value));
        break;

      case 82: // UnaryOp
        value.move< unaryop > (YY_MOVE (s.value));
        break;

      default:
        break;
    }

    location = YY_MOVE (s.location);
  }

  // by_type.
  inline
  sysy_parser::by_type::by_type ()
    : type (empty_symbol)
  {}

  inline
  sysy_parser::by_type::by_type (const by_type& other)
    : type (other.type)
  {}

  inline
  sysy_parser::by_type::by_type (token_type t)
    : type (yytranslate_ (t))
  {}

  inline
  void
  sysy_parser::by_type::clear ()
  {
    type = empty_symbol;
  }

  inline
  void
  sysy_parser::by_type::move (by_type& that)
  {
    type = that.type;
    that.clear ();
  }

  inline
  int
  sysy_parser::by_type::type_get () const
  {
    return type;
  }

  inline
  sysy_parser::token_type
  sysy_parser::by_type::token () const
  {
    // YYTOKNUM[NUM] -- (External) token number corresponding to the
    // (internal) symbol number NUM (which must be that of a token).  */
    static
    const unsigned short
    yytoken_number_[] =
    {
       0,   256,   298,   299,   258,   259,   260,   261,   262,   263,
     264,   265,   266,   267,   268,   269,   270,   271,   272,   273,
     274,   275,   276,   277,   278,   279,   280,   281,   282,   283,
     284,   285,   286,   287,   288,   289,   290,   291,   292,   293,
     294,   295,   296,   297
    };
    return static_cast<token_type> (yytoken_number_[type]);
  }

  // Implementation of make_symbol for each symbol type.
  inline
  sysy_parser::symbol_type
  sysy_parser::make_END (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_END, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_ERROR (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ERROR, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_ADD (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ADD, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_SUB (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_SUB, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_MUL (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_MUL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_DIV (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_DIV, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_GT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_GT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_GTE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_GTE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_EQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_EQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_NEQ (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NEQ, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_ASSIN (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ASSIN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_SEMICOLON (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_SEMICOLON, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_COMMA (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_COMMA, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_RPARENTHESE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RPARENTHESE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_RBRACKET (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RBRACKET, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_RBRACE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RBRACE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_ELSE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ELSE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_IF (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_IF, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_INT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_INT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_RETURN (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_RETURN, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_VOID (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_VOID, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_WHILE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_WHILE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_IDENTIFIER (YY_COPY (std::string) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_IDENTIFIER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_NUMBER (YY_COPY (int) v, YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NUMBER, YY_MOVE (v), YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_ARRAY (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_ARRAY, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_LETTER (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_LETTER, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_EOL (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_EOL, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_COMMENT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_COMMENT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_BLANK (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_BLANK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_CONST (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_CONST, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_BREAK (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_BREAK, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_CONTINUE (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_CONTINUE, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_NOT (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_NOT, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_AND (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_AND, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_OR (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_OR, YY_MOVE (l));
  }

  inline
  sysy_parser::symbol_type
  sysy_parser::make_MOD (YY_COPY (location_type) l)
  {
    return symbol_type (token::TOK_MOD, YY_MOVE (l));
  }



} // yy
#line 2606 "sysy_parser.hh" // lalr1.cc:403




#endif // !YY_YY_SYSY_PARSER_HH_INCLUDED
