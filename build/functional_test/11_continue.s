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
    mov r12, #52
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label1+0
.main_label1:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .main_label6+0
    b .main_label11+0
.main_label6:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .main_label13+0
    b .main_label16+0
.main_label11:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.main_label13:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label1+0
.main_label16:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r0, [sp, #48]
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
