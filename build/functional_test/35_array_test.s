    .arch armv7-a
    .file ""
    .text
    .global func
    .global main
    .syntax unified
    .arm
    .global field
.global_vars:
    .long field
func:
.func_pre:
    push {lr}
    mov r12, #28
    sub sp, sp, r12
.func_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #8]
    ldr lr, [sp, #8]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, =#3
    ldr lr, [sp, #12]
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #4]
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r0, [sp, #24]
    mov r12, #28
    add sp, sp, r12
    pop {pc}
.func_post:
main:
.main_pre:
    push {lr}
    mov r12, #88
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, =#1
    ldr r12, [sp, #20]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, =#2
    ldr r12, [sp, #24]
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#0
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #32]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    ldr r12, [sp, #32]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    add r12, sp, #16
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#16
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #0
    sub sp, sp, r12
    bl func
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#2
    add r12, r12, lr
    str r12, [sp, #76]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, [sp, #76]
    ldr lr, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #84]
    ldr r0, [sp, #84]
    mov r12, #88
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
field:
    .zero 8
