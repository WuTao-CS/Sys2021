    .arch armv7-a
    .file ""
    .text
    .global if_ifElse_
    .global main
    .syntax unified
    .arm
.global_vars:
if_ifElse_:
.if_ifElse__pre:
    push {lr}
    mov r12, #52
    sub sp, sp, r12
.if_ifElse__entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#5
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
    bne .if_ifElse__label6+0
    b .if_ifElse__label11+0
.if_ifElse__label6:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    cmp r12, #0
    bne .if_ifElse__label13+0
    b .if_ifElse__label14+0
.if_ifElse__label11:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.if_ifElse__label13:
    ldr lr, =#25
    add r12, sp, #0
    str lr, [r12, #0]
    b .if_ifElse__label17+0
.if_ifElse__label14:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#15
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #0
    str lr, [r12, #0]
    b .if_ifElse__label17+0
.if_ifElse__label17:
    b .if_ifElse__label11+0
.if_ifElse__post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl if_ifElse_
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
