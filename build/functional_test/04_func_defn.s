    .arch armv7-a
    .file ""
    .text
    .global func
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
func:
.func_pre:
    push {lr}
    mov r12, #16
    sub sp, sp, r12
.func_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r0, [sp, #12]
    mov r12, #16
    add sp, sp, r12
    pop {pc}
.func_post:
main:
.main_pre:
    push {lr}
    mov r12, #16
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl func
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r0, [sp, #12]
    mov r12, #16
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
