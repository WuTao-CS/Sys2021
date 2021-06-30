    .arch armv7-a
    .file ""
    .text
    .global func
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
func:
.func_pre:
    push {lr}
    mov r12, #32
    sub sp, sp, r12
.func_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #4]
    ldr lr, =#1
    ldr r12, [sp, #4]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #12]
    ldr lr, [sp, #12]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, =#3
    ldr lr, [sp, #16]
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #8]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #32
    add sp, sp, r12
    pop {pc}
.func_post:
main:
.main_pre:
    push {lr}
    mov r12, #56
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #16]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    ldr r12, [sp, #16]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, =#4
    ldr r12, [sp, #24]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, =#8
    ldr r12, [sp, #28]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #0
    sub sp, sp, r12
    bl func
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #40]
    ldr lr, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    mov r12, #56
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .zero 8
