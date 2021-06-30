    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
    .global s
.global_vars:
    .long a
    .long s
main:
.main_pre:
    push {lr}
    mov r12, #44
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label1+0
.main_label1:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr lr, [sp, #4]
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #8]
    ldr lr, [sp, #8]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    cmp r12, lr
    mov r12, #0
    movle r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    cmp r12, #0
    bne .main_label9+0
    b .main_label12+0
.main_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label1+0
.main_label12:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #44
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 5
s:
    .long 0
    .long 1
    .long 2
    .long 3
    .long 4
    .long 5
    .long 6
    .long 7
    .long 8
    .long 9
