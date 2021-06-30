    .arch armv7-a
    .file ""
    .text
    .global f
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
f:
.f_pre:
    push {lr}
    mov r12, #88
    sub sp, sp, r12
.f_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    cmp r12, #0
    bne .f_label6+0
    b .f_label7+0
.f_label6:
    ldr r0, =#1
    mov r12, #88
    add sp, sp, r12
    pop {pc}
.f_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#2
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    cmp r12, #0
    bne .f_label12+0
    b .f_label13+0
.f_label12:
    ldr r0, =#1
    mov r12, #88
    add sp, sp, r12
    pop {pc}
.f_label13:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r0, [sp, #64]
    mov r12, #0
    sub sp, sp, r12
    bl f
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #68]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r0, [sp, #72]
    mov r12, #0
    sub sp, sp, r12
    bl f
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #76]
    ldr r12, [sp, #68]
    ldr lr, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r0, [sp, #84]
    mov r12, #88
    add sp, sp, r12
    pop {pc}
.f_post:
main:
.main_pre:
    push {lr}
    mov r12, #36
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr lr, [sp, #0]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r0, [sp, #12]
    mov r12, #0
    sub sp, sp, r12
    bl f
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r0, [sp, #20]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #36
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
