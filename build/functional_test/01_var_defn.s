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
    mov r12, #0
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr r0, =#0
    mov r12, #0
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
