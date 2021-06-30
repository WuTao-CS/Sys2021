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
    mov r12, #76
    sub sp, sp, r12
.main_entry:
    ldr lr, =#20
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#5
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#6
    add r12, sp, #8
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#4
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #24]
    ldr lr, [sp, #28]
    mul r12, r12, lr
    str r12, [sp, #32]
    ldr r12, [sp, #20]
    ldr lr, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #36]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #44]
    ldr lr, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr r0, [sp, #40]
    ldr r1, [sp, #52]
    bl __aeabi_idivmod
    str r1, [sp, #56]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #56]
    ldr r1, [sp, #60]
    bl __aeabi_idiv
    str r0, [sp, #64]
    ldr r12, [sp, #36]
    ldr lr, [sp, #64]
    sub r12, r12, lr
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r0, [sp, #72]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #76
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
