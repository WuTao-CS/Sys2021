    .arch armv7-a
    .file ""
    .text
    .global doubleWhile
    .global main
    .syntax unified
    .arm
.global_vars:
doubleWhile:
.doubleWhile_pre:
    push {lr}
    mov r12, #68
    sub sp, sp, r12
.doubleWhile_entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#7
    add r12, sp, #4
    str lr, [r12, #0]
    b .doubleWhile_label2+0
.doubleWhile_label2:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#100
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    cmp r12, #0
    bne .doubleWhile_label7+0
    b .doubleWhile_label10+0
.doubleWhile_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#30
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #0
    str lr, [r12, #0]
    b .doubleWhile_label12+0
.doubleWhile_label10:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #68
    add sp, sp, r12
    pop {pc}
.doubleWhile_label12:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#100
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
    bne .doubleWhile_label17+0
    b .doubleWhile_label20+0
.doubleWhile_label17:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#6
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #4
    str lr, [r12, #0]
    b .doubleWhile_label12+0
.doubleWhile_label20:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#100
    sub r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #4
    str lr, [r12, #0]
    b .doubleWhile_label2+0
.doubleWhile_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl doubleWhile
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
