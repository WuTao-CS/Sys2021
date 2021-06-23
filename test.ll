; ModuleID = 'sysyc'
source_filename = "../test.sy"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  store i32 1, i32* @0
  %0 = alloca i32
  %1 = load i32, i32* @0
  %2 = add i32 %1, 1
  store i32 %2, i32* %0
  %3 = load i32, i32* %0
  ret i32 %3
}
