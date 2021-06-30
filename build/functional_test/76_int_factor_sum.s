    .arch armv7-a
    .file ""
    .text
    .global factor
    .global main
    .syntax unified
    .arm
    .global N
    .global newline
.global_vars:
    .long N
    .long newline
factor:
.factor_pre:
    push {lr}
    mov r12, #84
    sub sp, sp, r12
.factor_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #4
    str lr, [r12, #0]
    b .factor_label4+0
.factor_label4:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #20]
    ldr r12, [sp, #12]
    ldr lr, [sp, #20]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .factor_label11+0
    b .factor_label18+0
.factor_label11:
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
    ldr r12, [sp, #44]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    cmp r12, #0
    bne .factor_label20+0
    b .factor_label24+0
.factor_label18:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    mov r12, #84
    add sp, sp, r12
    pop {pc}
.factor_label20:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #8
    str lr, [r12, #0]
    b .factor_label24+0
.factor_label24:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #4
    str lr, [r12, #0]
    b .factor_label4+0
.factor_post:
main:
.main_pre:
    push {lr}
    mov r12, #20
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
    str r12, [sp, #12]
    ldr r0, [sp, #12]
    mov r12, #0
    sub sp, sp, r12
    bl factor
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
N:
    .long 0
newline:
    .long 0
