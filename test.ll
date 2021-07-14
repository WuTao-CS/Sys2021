; ModuleID = 'SysY code'
source_filename = ""
@a = global i32 0
@b = global i32 0
declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

declare void @_sysy_starttime(i32)

declare void @_sysy_stoptime(i32)

define i32 @main() {
entry:
  store i32 0, i32* @b
  store i32 3, i32* @a
  br label %label0
label0:                                                ; preds = %entry, %label5
  %op1 = load i32, i32* @a
  %op2 = icmp sgt i32 %op1, 0
  %op3 = zext i1 %op2 to i32
  %op4 = icmp ne i32 %op3, 0
  br i1 %op4, label %label5, label %label11
label5:                                                ; preds = %label0
  %op6 = load i32, i32* @b
  %op7 = load i32, i32* @a
  %op8 = add i32 %op6, %op7
  store i32 %op8, i32* @b
  %op9 = load i32, i32* @a
  %op10 = sub i32 %op9, 1
  store i32 %op10, i32* @a
  br label %label0
label11:                                                ; preds = %label0
  %op12 = load i32, i32* @b
  ret i32 %op12
}