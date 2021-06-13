USE_CXX_LEXER := 1

CC       := clang
CXX      := clang++
CPPFLAGS :=
CXXFLAGS :=  -pedantic -Wall -Wextra -g

LDLIBS   := -lstdc++

LEX      := flex
LFLAGS   := -v --debug
ifneq (0,${USE_CXX_LEXER})
LFLAGS += --c++
endif

YACC     := bison
YFLAGS   := -v -Wall

ANAME    := sysy
PNAME    := sysy_parser
LNAME    := sysy_scanner
DNAME    := sysy_driver

${ANAME}: ${ANAME}.o ${DNAME}.o ${PNAME}.o ${LNAME}.o syntax_tree.o

objs: ${PNAME}.o ${LNAME}.o ${DNAME}.o ${ANAME}.o syntax_tree.o

# Application dependencies:
${ANAME}.o: ${ANAME}.cc ${DNAME}.o

# Driver dependencies:
${DNAME}.o: ${DNAME}.cc ${DNAME}.hh ${PNAME}.hh

# Parser dependencies:
${PNAME}.o: ${PNAME}.cc ${PNAME}.hh

# Lexer dependencies:
${LNAME}.o: ${LNAME}.cc ${PNAME}.hh 


# Suppress built-in implicit YACC rule:
%.c: %.y

# Implicit rule for Bison:
%.cc %.hh: %.yy
	${YACC} ${YFLAGS} -o $*.cc --defines=$*.hh $<

# Implicit rule for flex without header generation:
%.cc: %.ll
	${LEX} ${LFLAGS} -o $*.cc $<

%.i: %.cc
	${CXX} -E ${CPPFLAGS} ${CXXFLAGS} -o $@ $<


clean:
	rm -f $(LNAME:=.cc) $(LNAME:=.hh) $(PNAME:=.hh) $(PNAME:=.cc)
	rm -f $(PNAME:=.output) position.hh stack.hh location.hh
	rm -f ${ANAME}
	rm -f smake.* *~ *.o *.i
	rm -f sytax_tree.o
