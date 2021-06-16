; Module name: 'SysY code'
source_filename: ""
define i32@getint()
define i32@getch()
define @putint(i32 %0 )
define @putch(i32 %0 )
define i32@getarray(i32* %0 )
define i32@putarray(i32 %0 , i32* %1 )
define @_sysy_starttime(i32 %0 )
define @_sysy_stoptime(i32 %0 )
define i32@__mtstart()
define @__mtend(i32 %0 )
define i32@main()
<label>entry
<label>0
    i32* %1  = Alloca 
    Store i32 8 i32* %1 
<label>2
    i32* %3  = Alloca 
    i32 %4  = Load i32* %1 
    i32 %5  = Mul i32 10 i32 %4 
    i32 %6  = Add i32 4 i32 1 
    i32 %7  = Div i32 %5 i32 %6 
    Store i32 %7 i32* %3 
    i32 %8  = Load i32* %3 
    ret i32 %8