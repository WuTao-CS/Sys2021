    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
.global_vars:
main:
.main_pre:
    push {lr}
    mov r12, #116
    sub sp, sp, r12
.main_entry:
    ldr lr, =#1
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#4
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#28
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #16]
    ldr lr, [sp, #20]
    add r12, r12, lr
    str r12, [sp, #24]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #24]
    ldr lr, [sp, #28]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
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
    bne .main_label11+0
    b .main_label17+0
.main_label11:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, =#0
    ldr lr, [sp, #48]
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr r0, [sp, #44]
    ldr r1, [sp, #52]
    bl __aeabi_idivmod
    str r1, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label17+0
.main_label17:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    sub r12, r12, lr
    str r12, [sp, #72]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #72]
    ldr lr, [sp, #76]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    cmp r12, #0
    bne .main_label25+0
    b .main_label32+0
.main_label25:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #92]
    ldr r1, [sp, #96]
    bl __aeabi_idivmod
    str r1, [sp, #100]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #100]
    ldr lr, [sp, #104]
    add r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r0, [sp, #112]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label32+0
.main_label32:
    ldr r0, =#0
    mov r12, #116
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
