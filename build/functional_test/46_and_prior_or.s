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
    mov r12, #148
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#8
    add r12, sp, #4
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#4
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#15
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #28]
    ldr lr, [sp, #32]
    sub r12, r12, lr
    str r12, [sp, #36]
    ldr r0, [sp, #24]
    ldr r1, [sp, #36]
    bl __aeabi_idivmod
    str r1, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #52]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #68]
    ldr r12, [sp, #52]
    ldr lr, [sp, #68]
    and r12, r12, lr
    str r12, [sp, #72]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    ldr r1, =#3
    bl __aeabi_idivmod
    str r1, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #92]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #108]
    ldr r12, [sp, #92]
    ldr lr, [sp, #108]
    and r12, r12, lr
    str r12, [sp, #112]
    ldr r12, [sp, #72]
    ldr lr, [sp, #112]
    orr r12, r12, lr
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    cmp r12, #0
    bne .main_label30+0
    b .main_label38+0
.main_label30:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #120]
    ldr lr, [sp, #124]
    add r12, r12, lr
    str r12, [sp, #128]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, =#0
    ldr lr, [sp, #132]
    sub r12, r12, lr
    str r12, [sp, #136]
    ldr r12, [sp, #128]
    ldr lr, [sp, #136]
    sub r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #20
    str lr, [r12, #0]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r0, [sp, #144]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label38+0
.main_label38:
    ldr r0, =#0
    mov r12, #148
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
