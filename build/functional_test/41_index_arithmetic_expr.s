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
    ldr lr, =#56
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#12
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, =#1
    ldr r12, [sp, #20]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, =#2
    ldr r12, [sp, #24]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, =#3
    ldr r12, [sp, #28]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #36]
    ldr r1, [sp, #40]
    bl __aeabi_idivmod
    str r1, [sp, #44]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #44]
    ldr lr, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    ldr r1, =#5
    bl __aeabi_idiv
    str r0, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #32
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
