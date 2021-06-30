    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
.global_vars:
main:
.main_pre:
    push {lr}
    mov r12, #0
    sub sp, sp, r12
.main_entry:
    ldr r0, =#4
    mov r12, #0
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
