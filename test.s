    .arch armv7-a
    .file ""
    .text
    .global f
    .global main
    .syntax unified
    .arm
.global_vars:
f:
.f_pre:
    push {lr}
    mov r12, #20
    sub sp, sp, r12
.f_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, [sp, #8]
    ldr lr, [sp, #12]
    add r12, r12, lr
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.f_post:
main:
.main_pre:
    push {lr}
    mov r12, #48
    sub sp, sp, r12
.main_entry:
    ldr lr, =#1
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#2
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    cmp r12, #0
    bne .main_label6+0
    b .main_label7+0
.main_label6:
    ldr lr, =#2
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label8+0
.main_label7:
    ldr lr, =#3
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label8+0
.main_label8:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #28]
    ldr r1, [sp, #32]
    mov r12, #0
    sub sp, sp, r12
    bl f
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r0, [sp, #44]
    mov r12, #48
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
