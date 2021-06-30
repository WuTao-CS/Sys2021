    .arch armv7-a
    .file ""
    .text
    .global fac
    .global main
    .syntax unified
    .arm
    .global a
    .global r
.global_vars:
    .long a
    .long r
fac:
.fac_pre:
    push {lr}
    mov r12, #52
    sub sp, sp, r12
.fac_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#2
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .fac_label6+0
    b .fac_label7+0
.fac_label6:
    ldr r0, =#1
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.fac_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #0
    sub sp, sp, r12
    bl fac
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #32]
    ldr lr, [sp, #32]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #36]
    ldr lr, [sp, #40]
    mul r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r0, [sp, #48]
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.fac_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl fac
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
r:
    .long 0
