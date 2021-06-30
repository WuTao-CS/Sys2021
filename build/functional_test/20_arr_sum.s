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
    mov r12, #96
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #0]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #4]
    ldr lr, [sp, #4]
    ldr r12, [sp, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    ldr r12, [sp, #8]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #16]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #20]
    ldr lr, [sp, #20]
    ldr r12, [sp, #16]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #24]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #28]
    ldr lr, [sp, #28]
    ldr r12, [sp, #24]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #32]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #36]
    ldr lr, [sp, #36]
    ldr r12, [sp, #32]
    str lr, [r12, #0]
    ldr lr, =#4
    add r12, sp, #40
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #44
    str lr, [r12, #0]
    b .main_label12+0
.main_label12:
    add lr, sp, #40
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
    bne .main_label17+0
    b .main_label25+0
.main_label17:
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #64]
    ldr lr, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #44
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #40
    str lr, [r12, #0]
    b .main_label12+0
.main_label25:
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r0, [sp, #92]
    mov r12, #96
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .zero 20
