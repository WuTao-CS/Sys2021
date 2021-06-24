; ModuleID = 'SysY code'
source_filename = ""
declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

declare void @_sysy_starttime(i32)

declare void @_sysy_stoptime(i32)

define i32 @f(i32 %arg0, i32 %arg1) {
entry:
  %op2 = alloca i32
  store i32 %arg0, i32* %op2
  %op3 = alloca i32
  store i32 %arg1, i32* %op3
  %op4 = load i32, i32* %op2
  %op5 = load i32, i32* %op3
  %op6 = add i32 %op4, %op5
  ret i32 %op6
}
define i32 @main() {
entry:
  %op0 = alloca i32
  store i32 1, i32* %op0
  %op1 = alloca i32
  store i32 2, i32* %op1
  %op2 = load i32, i32* %op0
  %op3 = icmp eq i32 %op2, 1
  %op4 = zext i1 %op3 to i32
  %op5 = icmp ne i32 %op4, 0
  br i1 %op5, label %label6, label %label7
label6:                                                ; preds = %entry
  store i32 2, i32* %op0
  br label %label8
label7:                                                ; preds = %entry
  store i32 3, i32* %op0
  br label %label8
label8:                                                ; preds = %label6, %label7
  %op9 = alloca i32
  %op10 = load i32, i32* %op0
  %op11 = load i32, i32* %op1
  %op12 = add i32 %op10, %op11
  store i32 %op12, i32* %op9
  %op13 = load i32, i32* %op9
  call void @putint(i32 %op13)
  %op14 = sub i32 0, 1
  ret i32 %op14
}