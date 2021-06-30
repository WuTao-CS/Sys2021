    .arch armv7-a
    .file ""
    .text
    .global _getMaxOfAll
    .global main
    .syntax unified
    .arm
.global_vars:
_getMaxOfAll:
._getMaxOfAll_pre:
    push {lr}
    mov r12, #104
    sub sp, sp, r12
._getMaxOfAll_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#999999
    sub r12, r12, lr
    str r12, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #4
    str lr, [r12, #0]
    b ._getMaxOfAll_label8+0
._getMaxOfAll_label8:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #24]
    ldr lr, [sp, #28]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne ._getMaxOfAll_label14+0
    b ._getMaxOfAll_label23+0
._getMaxOfAll_label14:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #44]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne ._getMaxOfAll_label25+0
    b ._getMaxOfAll_label30+0
._getMaxOfAll_label23:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    mov r12, #104
    add sp, sp, r12
    pop {pc}
._getMaxOfAll_label25:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #8
    str lr, [r12, #0]
    b ._getMaxOfAll_label30+0
._getMaxOfAll_label30:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #4
    str lr, [r12, #0]
    b ._getMaxOfAll_label8+0
._getMaxOfAll_post:
main:
.main_pre:
    push {lr}
    mov r12, #56
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #12]
    ldr r12, =#0
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    ldr r12, [sp, #12]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, =#2
    ldr r12, [sp, #20]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #24]
    ldr r12, =#0
    ldr lr, =#7
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    ldr r12, [sp, #24]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    ldr r1, =#3
    mov r12, #0
    sub sp, sp, r12
    bl _getMaxOfAll
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #40]
    ldr lr, [sp, #40]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #56
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
