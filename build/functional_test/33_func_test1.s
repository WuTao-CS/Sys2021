    .arch armv7-a
    .file ""
    .text
    .global myFunc
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
myFunc:
.myFunc_pre:
    push {lr}
    mov r12, #68
    sub sp, sp, r12
.myFunc_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#2
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
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
    bne .myFunc_label11+0
    b .myFunc_label12+0
.myFunc_label11:
    ldr r0, =#0
    mov r12, #68
    add sp, sp, r12
    pop {pc}
.myFunc_label12:
    b .myFunc_label13+0
.myFunc_label13:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    cmp r12, #0
    bne .myFunc_label18+0
    b .myFunc_label21+0
.myFunc_label18:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    add r12, sp, #4
    str lr, [r12, #0]
    b .myFunc_label13+0
.myFunc_label21:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr r0, [sp, #64]
    mov r12, #68
    add sp, sp, r12
    pop {pc}
.myFunc_post:
main:
.main_pre:
    push {lr}
    mov r12, #20
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr r0, =#1
    ldr r1, =#2
    ldr r2, =#1
    mov r12, #0
    sub sp, sp, r12
    bl myFunc
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #4]
    ldr lr, [sp, #4]
    add r12, sp, #0
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, [sp, #8]
    ldr lr, [sp, #12]
    add r12, r12, lr
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
