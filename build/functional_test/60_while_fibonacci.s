    .arch armv7-a
    .file ""
    .text
    .global fib
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
fib:
.fib_pre:
    push {lr}
    mov r12, #96
    sub sp, sp, r12
.fib_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    cmp r12, #0
    bne .fib_label9+0
    b .fib_label10+0
.fib_label9:
    ldr r0, =#0
    mov r12, #96
    add sp, sp, r12
    pop {pc}
.fib_label10:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    cmp r12, #0
    bne .fib_label15+0
    b .fib_label16+0
.fib_label15:
    ldr r0, =#1
    mov r12, #96
    add sp, sp, r12
    pop {pc}
.fib_label16:
    b .fib_label17+0
.fib_label17:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    cmp r12, #0
    bne .fib_label22+0
    b .fib_label30+0
.fib_label22:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #0
    str lr, [r12, #0]
    b .fib_label17+0
.fib_label30:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r0, [sp, #92]
    mov r12, #96
    add sp, sp, r12
    pop {pc}
.fib_post:
main:
.main_pre:
    push {lr}
    mov r12, #20
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr lr, [sp, #0]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl fib
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
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
