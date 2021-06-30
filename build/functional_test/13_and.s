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
    mov r12, #28
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
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #4]
    ldr lr, [sp, #4]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #12]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #12]
    ldr lr, [sp, #20]
    and r12, r12, lr
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    cmp r12, #0
    bne .main_label7+0
    b .main_label8+0
.main_label7:
    ldr r0, =#1
    mov r12, #28
    add sp, sp, r12
    pop {pc}
.main_label8:
    ldr r0, =#0
    mov r12, #28
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
b:
    .long 0
