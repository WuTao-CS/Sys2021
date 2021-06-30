    .arch armv7-a
    .file ""
    .text
    .global ifWhile
    .global main
    .syntax unified
    .arm
.global_vars:
ifWhile:
.ifWhile_pre:
    push {lr}
    mov r12, #92
    sub sp, sp, r12
.ifWhile_entry:
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#3
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .ifWhile_label6+0
    b .ifWhile_label7+0
.ifWhile_label6:
    b .ifWhile_label10+0
.ifWhile_label7:
    b .ifWhile_label21+0
.ifWhile_label8:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r0, [sp, #24]
    mov r12, #92
    add sp, sp, r12
    pop {pc}
.ifWhile_label10:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#2
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    cmp r12, #0
    bne .ifWhile_label15+0
    b .ifWhile_label18+0
.ifWhile_label15:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#2
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #4
    str lr, [r12, #0]
    b .ifWhile_label10+0
.ifWhile_label18:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#25
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #4
    str lr, [r12, #0]
    b .ifWhile_label8+0
.ifWhile_label21:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    cmp r12, #0
    bne .ifWhile_label26+0
    b .ifWhile_label31+0
.ifWhile_label26:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #0
    str lr, [r12, #0]
    b .ifWhile_label21+0
.ifWhile_label31:
    b .ifWhile_label8+0
.ifWhile_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl ifWhile
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
