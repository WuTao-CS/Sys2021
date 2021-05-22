#include "sysy_driver.hh"
#include "sysy_parser.hh"

sysy_driver::sysy_driver ()
    : trace_scanning (false), trace_parsing (false)
{
    variables["one"] = 1;
    variables["two"] = 2;
}

sysy_driver::~sysy_driver ()
{
}

SyntaxCompUnit* sysy_driver::parse (const std::string &f)
{
    file = f;
    scan_begin ();
    yy::sysy_parser parser (*this);
    parser.set_debug_level (trace_parsing);
    parser.parse ();
    scan_end ();
    // std::cout << this->root;
    return this->root;
}

void sysy_driver::error (const yy::location& l, const std::string& m)
{
    std::cerr << l << ": " << m << std::endl;
}

void sysy_driver::error (const std::string& m)
{
    std::cerr << m << std::endl;
}


void sysy_driver::scan_begin()
{
    lexer.set_debug( trace_scanning );

    // Try to open the file:
    instream.open(file);

    if( instream.good() ) {
        lexer.switch_streams(&instream, 0);
    } else if( file == "-" ) {
        lexer.switch_streams(&std::cin, 0);
    } else {
        error ("Cannot open file '" + file + "'.");
        exit (EXIT_FAILURE);
    }
}

void sysy_driver::scan_end ()
{
    instream.close();
}
