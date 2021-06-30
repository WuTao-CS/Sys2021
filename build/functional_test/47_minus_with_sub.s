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
    mov r12, #72
    sub sp, sp, r12
.main_entry:
    ldr r12, =#0
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, =#0
    ldr lr, [sp, #16]
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr r12, [sp, #12]
    ldr lr, [sp, #20]
    sub r12, r12, lr
    str r12, [sp, #24]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #28]
    ldr lr, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #36]
    ldr r12, =#0
    ldr lr, [sp, #36]
    sub r12, r12, lr
    str r12, [sp, #40]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #44]
    ldr lr, [sp, #48]
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr r12, =#0
    ldr lr, [sp, #52]
    sub r12, r12, lr
    str r12, [sp, #56]
    ldr r0, [sp, #40]
    ldr r1, [sp, #56]
    bl __aeabi_idivmod
    str r1, [sp, #60]
    ldr r12, [sp, #24]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #72
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
