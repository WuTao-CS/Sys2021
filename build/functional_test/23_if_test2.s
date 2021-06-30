    .arch armv7-a
    .file ""
    .text
    .global ifElseElseIf
    .global main
    .syntax unified
    .arm
.global_vars:
ifElseElseIf:
.ifElseElseIf_pre:
    push {lr}
    mov r12, #52
    sub sp, sp, r12
.ifElseElseIf_entry:
    ldr lr, =#66
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#8923
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
    bne .ifElseElseIf_label6+0
    b .ifElseElseIf_label7+0
.ifElseElseIf_label6:
    ldr lr, =#25
    add r12, sp, #4
    str lr, [r12, #0]
    b .ifElseElseIf_label12+0
.ifElseElseIf_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    cmp r12, #0
    bne .ifElseElseIf_label14+0
    b .ifElseElseIf_label15+0
.ifElseElseIf_label12:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #52
    add sp, sp, r12
    pop {pc}
.ifElseElseIf_label14:
    ldr lr, =#42
    add r12, sp, #4
    str lr, [r12, #0]
    b .ifElseElseIf_label18+0
.ifElseElseIf_label15:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #4
    str lr, [r12, #0]
    b .ifElseElseIf_label18+0
.ifElseElseIf_label18:
    b .ifElseElseIf_label12+0
.ifElseElseIf_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl ifElseElseIf
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
