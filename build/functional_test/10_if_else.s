    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
main:
.main_pre:
    push {lr}
    mov r12, #16
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
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
    bne .main_label4+0
    b .main_label5+0
.main_label4:
    ldr r0, =#1
    mov r12, #16
    add sp, sp, r12
    pop {pc}
.main_label5:
    ldr r0, =#0
    mov r12, #16
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
