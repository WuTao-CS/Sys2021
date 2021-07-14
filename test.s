    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
    .global b
.global_vars:
    .long a
    .long b
main:
.main_pre:
    push {lr}
    mov r12, #40
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .main_label0+0
.main_label0:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #0]
    ldr r12, [sp, #0]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    cmp r12, #0
    bne .main_label5+0
    b .main_label11+0
.main_label5:
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #16]
    ldr lr, [sp, #20]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .main_label0+0
.main_label11:
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #40
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
b:
    .long 0
