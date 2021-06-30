    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
main:
.main_pre:
    push {lr}
    mov r12, #48
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r0, [sp, #44]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #48
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
