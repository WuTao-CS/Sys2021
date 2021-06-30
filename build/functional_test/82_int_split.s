    .arch armv7-a
    .file ""
    .text
    .global split
    .global main
    .syntax unified
    .arm
    .global N
    .global newline
.global_vars:
    .long N
    .long newline
split:
.split_pre:
    push {lr}
    mov r12, #76
    sub sp, sp, r12
.split_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #8
    str lr, [r12, #0]
    b .split_label7+0
.split_label7:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
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
    bne .split_label13+0
    b .split_label23+0
.split_label13:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #48]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    ldr r1, =#10
    bl __aeabi_idivmod
    str r1, [sp, #56]
    ldr lr, [sp, #56]
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    ldr r1, =#10
    bl __aeabi_idiv
    str r0, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #8
    str lr, [r12, #0]
    b .split_label7+0
.split_label23:
    ldr r0, =#0
    mov r12, #76
    add sp, sp, r12
    pop {pc}
.split_post:
main:
.main_pre:
    push {lr}
    mov r12, #84
    sub sp, sp, r12
.main_entry:
    ldr lr, =#4
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#10
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1478
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #28]
    ldr r0, [sp, #24]
    ldr r1, [sp, #28]
    mov r12, #0
    sub sp, sp, r12
    bl split
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label7+0
.main_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#4
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    cmp r12, #0
    bne .main_label12+0
    b .main_label20+0
.main_label12:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r0, [sp, #72]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label7+0
.main_label20:
    ldr r0, =#0
    mov r12, #84
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
N:
    .long 0
newline:
    .long 0
