    .arch armv7-a
    .file ""
    .text
    .global ifElse
    .global main
    .syntax unified
    .arm
.global_vars:
ifElse:
.ifElse_pre:
    push {lr}
    mov r12, #32
    sub sp, sp, r12
.ifElse_entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#5
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
    bne .ifElse_label5+0
    b .ifElse_label6+0
.ifElse_label5:
    ldr lr, =#25
    add r12, sp, #0
    str lr, [r12, #0]
    b .ifElse_label9+0
.ifElse_label6:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #0
    str lr, [r12, #0]
    b .ifElse_label9+0
.ifElse_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #32
    add sp, sp, r12
    pop {pc}
.ifElse_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl ifElse
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
