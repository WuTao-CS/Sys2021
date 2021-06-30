    .arch armv7-a
    .file ""
    .text
    .global fib
    .global main
    .syntax unified
    .arm
.global_vars:
fib:
.fib_pre:
    push {lr}
    mov r12, #80
    sub sp, sp, r12
.fib_entry:
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
    bne .fib_label6+0
    b .fib_label7+0
.fib_label6:
    ldr r0, =#0
    mov r12, #80
    add sp, sp, r12
    pop {pc}
.fib_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .fib_label12+0
    b .fib_label13+0
.fib_label12:
    ldr r0, =#1
    mov r12, #80
    add sp, sp, r12
    pop {pc}
.fib_label13:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #48
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    mov r12, #0
    sub sp, sp, r12
    bl fib
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #64]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #0
    sub sp, sp, r12
    bl fib
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #72]
    ldr r12, [sp, #64]
    ldr lr, [sp, #72]
    add r12, r12, lr
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    mov r12, #80
    add sp, sp, r12
    pop {pc}
.fib_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl fib
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
