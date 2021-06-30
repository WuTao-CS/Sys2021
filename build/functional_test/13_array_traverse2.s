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
    mov r12, #124
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
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
    b .main_label4+0
.main_label4:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#3
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
    bne .main_label9+0
    b .main_label10+0
.main_label9:
    b .main_label11+0
.main_label10:
    ldr r0, =#0
    mov r12, #124
    add sp, sp, r12
    pop {pc}
.main_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .main_label16+0
    b .main_label17+0
.main_label16:
    b .main_label20+0
.main_label17:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label4+0
.main_label20:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#3
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
    ldr r12, [sp, #68]
    cmp r12, #0
    bne .main_label25+0
    b .main_label37+0
.main_label25:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    mov r12, #36
    mul lr, lr, r12
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #76]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    mov r12, #12
    mul lr, lr, r12
    ldr r12, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #84]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #92]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    ldr r12, [sp, #92]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    add r12, sp, #8
    str lr, [r12, #0]
    b .main_label20+0
.main_label37:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #4
    str lr, [r12, #0]
    b .main_label11+0
.main_post:
    .data
a:
    .zero 108
