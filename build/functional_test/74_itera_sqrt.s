    .arch armv7-a
    .file ""
    .text
    .global fsqrt
    .global main
    .syntax unified
    .arm
.global_vars:
fsqrt:
.fsqrt_pre:
    push {lr}
    mov r12, #80
    sub sp, sp, r12
.fsqrt_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r0, [sp, #12]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #8
    str lr, [r12, #0]
    b .fsqrt_label6+0
.fsqrt_label6:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    cmp r12, #0
    bne .fsqrt_label13+0
    b .fsqrt_label22+0
.fsqrt_label13:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r0, [sp, #52]
    ldr r1, [sp, #56]
    bl __aeabi_idiv
    str r0, [sp, #60]
    ldr r12, [sp, #48]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #8
    str lr, [r12, #0]
    b .fsqrt_label6+0
.fsqrt_label22:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    mov r12, #80
    add sp, sp, r12
    pop {pc}
.fsqrt_post:
main:
.main_pre:
    push {lr}
    mov r12, #24
    sub sp, sp, r12
.main_entry:
    ldr lr, =#400
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl fsqrt
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r0, [sp, #20]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #24
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
