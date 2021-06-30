    .arch armv7-a
    .file ""
    .text
    .global fact
    .global main
    .syntax unified
    .arm
.global_vars:
fact:
.fact_pre:
    push {lr}
    mov r12, #48
    sub sp, sp, r12
.fact_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#0
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
    bne .fact_label6+0
    b .fact_label7+0
.fact_label6:
    ldr r0, =#1
    mov r12, #48
    add sp, sp, r12
    pop {pc}
.fact_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #20
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #0
    sub sp, sp, r12
    bl fact
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #40]
    ldr r12, [sp, #32]
    ldr lr, [sp, #40]
    mul r12, r12, lr
    str r12, [sp, #44]
    ldr r0, [sp, #44]
    mov r12, #48
    add sp, sp, r12
    pop {pc}
.fact_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    ldr lr, =#4
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl fact
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
