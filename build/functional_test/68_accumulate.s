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
    mov r12, #48
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label2+0
.main_label2:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#21
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .main_label7+0
    b .main_label13+0
.main_label7:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #24]
    ldr lr, [sp, #28]
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, [sp, #40]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label2+0
.main_label13:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r0, [sp, #44]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #48
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
