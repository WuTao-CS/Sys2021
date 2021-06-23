; ModuleID = 'sysyc'
source_filename = "/home/linux/Desktop/sysyruntimelibrary-master/section1/functional_test/02_arr_defn4.sy"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca [4 x [2 x i32]]
  %1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %0, i32 0, i32 0
  %2 = getelementptr [2 x i32], [2 x i32]* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr i32, i32* %2, i32 1
  store i32 2, i32* %3
  %4 = getelementptr i32, i32* %3, i32 1
  store i32 3, i32* %4
  %5 = getelementptr i32, i32* %4, i32 1
  store i32 4, i32* %5
  %6 = getelementptr i32, i32* %5, i32 1
  store i32 5, i32* %6
  %7 = getelementptr i32, i32* %6, i32 1
  store i32 6, i32* %7
  %8 = getelementptr i32, i32* %7, i32 1
  store i32 7, i32* %8
  %9 = getelementptr i32, i32* %8, i32 1
  store i32 8, i32* %9
  %10 = getelementptr i32, i32* %9, i32 1
  %11 = alloca [4 x [2 x i32]]
  %12 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %0, i32 0, i32 0
  %13 = getelementptr [2 x i32], [2 x i32]* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  %15 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %0, i32 0, i32 0
  %16 = getelementptr [2 x i32], [2 x i32]* %15, i32 0, i32 1
  %17 = load i32, i32* %16
  %18 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %11, i32 0, i32 0
  %19 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 %14, i32* %19
  %20 = getelementptr i32, i32* %19, i32 1
  store i32 %17, i32* %20
  %21 = getelementptr i32, i32* %20, i32 1
  store i32 3, i32* %21
  %22 = getelementptr i32, i32* %21, i32 1
  store i32 4, i32* %22
  %23 = getelementptr i32, i32* %22, i32 1
  store i32 5, i32* %23
  %24 = getelementptr i32, i32* %23, i32 1
  store i32 6, i32* %24
  %25 = getelementptr i32, i32* %24, i32 1
  store i32 7, i32* %25
  %26 = getelementptr i32, i32* %25, i32 1
  store i32 8, i32* %26
  %27 = getelementptr i32, i32* %26, i32 1
  ret i32 0
}
