    .arch armv7-a
    .file ""
    .text
    .global dec2bin
    .global main
    .syntax unified
    .arm
.global_vars:
dec2bin:
.dec2bin_pre:
    push {lr}
    mov r12, #88
    sub sp, sp, r12
.dec2bin_entry:
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
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #16
    str lr, [r12, #0]
    b .dec2bin_label7+0
.dec2bin_label7:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#0
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
    bne .dec2bin_label12+0
    b .dec2bin_label24+0
.dec2bin_label12:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #48]
    ldr lr, [sp, #52]
    mul r12, r12, lr
    str r12, [sp, #56]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#10
    mul r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #16
    str lr, [r12, #0]
    b .dec2bin_label7+0
.dec2bin_label24:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r0, [sp, #84]
    mov r12, #88
    add sp, sp, r12
    pop {pc}
.dec2bin_post:
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
    bl dec2bin
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
