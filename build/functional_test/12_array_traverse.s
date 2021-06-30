    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global a
.global_vars:
    .long a
main:
.main_pre:
    push {lr}
    mov r12, #144
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    b .main_label2+0
.main_label2:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, =#3
    ldr lr, =#4
    add r12, r12, lr
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #16]
    ldr r12, [sp, #8]
    ldr lr, [sp, #16]
    cmp r12, lr
    mov r12, #0
    movle r12, #1
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
    bne .main_label9+0
    b .main_label12+0
.main_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #32
    str lr, [r12, #0]
    b .main_label13+0
.main_label12:
    ldr r0, =#0
    mov r12, #144
    add sp, sp, r12
    pop {pc}
.main_label13:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movge r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    cmp r12, #0
    bne .main_label18+0
    b .main_label30+0
.main_label18:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#4
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #68]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #72]
    ldr lr, [sp, #76]
    sub r12, r12, lr
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #92]
    ldr r12, [sp, #68]
    ldr lr, [sp, #92]
    and r12, r12, lr
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    cmp r12, #0
    bne .main_label33+0
    b .main_label41+0
.main_label30:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label2+0
.main_label33:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #108]
    ldr lr, [sp, #112]
    sub r12, r12, lr
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    mov r12, #16
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #120]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #120]
    add r12, r12, lr
    str r12, [sp, #128]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    ldr r12, [sp, #128]
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #4
    str lr, [r12, #0]
    b .main_label41+0
.main_label41:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #32
    str lr, [r12, #0]
    b .main_label13+0
.main_post:
    .data
a:
    .zero 48
