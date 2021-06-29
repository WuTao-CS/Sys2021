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
    mov r12, #104
    sub sp, sp, r12
.func_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .func_label5+0
.func_label5:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    cmp r12, #0
    bne .func_label10+0
    b .func_label11+0
.func_label10:
    b .func_label13+0
.func_label11:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #104
    add sp, sp, r12
    pop {pc}
.func_label13:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    cmp r12, #0
    bne .func_label18+0
    b .func_label30+0
.func_label18:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#5
    mul r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #68]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, [sp, #52]
    ldr lr, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #8
    str lr, [r12, #0]
    b .func_label13+0
.func_label30:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #4
    str lr, [r12, #0]
    b .func_label5+0
.func_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #20
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #0]
    add r12, r12, lr
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl func
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 1
    .long 2
    .long 3
    .long 4
    .long 5
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
    .long 0
