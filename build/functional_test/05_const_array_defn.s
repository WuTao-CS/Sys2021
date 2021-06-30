    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
main:
.main_pre:
    push {lr}
    mov r12, #8
    sub sp, sp, r12
.main_entry:
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #0]
    ldr lr, [sp, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #8
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
    .long 1
    .long 2
    .long 3
    .long 4
