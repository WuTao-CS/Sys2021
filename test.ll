; ModuleID = 'sysyc'
source_filename = "../test.sy"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  ret i32 0
}
