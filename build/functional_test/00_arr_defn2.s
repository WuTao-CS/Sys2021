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
    ldr r0, =#0
    mov r12, #0
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .zero 400
