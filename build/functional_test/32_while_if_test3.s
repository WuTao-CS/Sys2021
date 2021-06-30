    .arch armv7-a
    .file ""
    .text
    .global deepWhileBr
    .global main
    .syntax unified
    .arm
.global_vars:
deepWhileBr:
.deepWhileBr_pre:
    push {lr}
    mov r12, #124
    sub sp, sp, r12
.deepWhileBr_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #8
    str lr, [r12, #0]
    b .deepWhileBr_label8+0
.deepWhileBr_label8:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#75
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .deepWhileBr_label13+0
    b .deepWhileBr_label19+0
.deepWhileBr_label13:
    ldr lr, =#42
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#100
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    cmp r12, #0
    bne .deepWhileBr_label21+0
    b .deepWhileBr_label29+0
.deepWhileBr_label19:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    mov r12, #124
    add sp, sp, r12
    pop {pc}
.deepWhileBr_label21:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#99
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .deepWhileBr_label30+0
    b .deepWhileBr_label37+0
.deepWhileBr_label29:
    b .deepWhileBr_label8+0
.deepWhileBr_label30:
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #92
    str lr, [r12, #0]
    ldr r12, =#1
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    cmp r12, #0
    bne .deepWhileBr_label38+0
    b .deepWhileBr_label41+0
.deepWhileBr_label37:
    b .deepWhileBr_label29+0
.deepWhileBr_label38:
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #8
    str lr, [r12, #0]
    b .deepWhileBr_label41+0
.deepWhileBr_label41:
    b .deepWhileBr_label37+0
.deepWhileBr_post:
main:
.main_pre:
    push {lr}
    mov r12, #16
    sub sp, sp, r12
.main_entry:
    ldr lr, =#2
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl deepWhileBr
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr r0, [sp, #12]
    mov r12, #16
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
