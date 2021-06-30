    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
    .global b
    .global c
.global_vars:
    .long a
    .long b
    .long c
main:
.main_pre:
    push {lr}
    mov r12, #40
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
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr lr, [sp, #8]
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    mul r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #16]
    ldr lr, [sp, #28]
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
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
c:
    .long 0
