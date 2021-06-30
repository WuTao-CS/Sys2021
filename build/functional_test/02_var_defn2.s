    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
    .global b
.global_vars:
    .long a
    .long b
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr r0, =#0
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
b:
    .long 0
