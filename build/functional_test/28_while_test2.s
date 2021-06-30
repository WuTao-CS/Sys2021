    .arch armv7-a
    .file ""
    .text
    .global FourWhile
    .global main
    .syntax unified
    .arm
.global_vars:
FourWhile:
.FourWhile_pre:
    push {lr}
    mov r12, #164
    sub sp, sp, r12
.FourWhile_entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#6
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#7
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #12
    str lr, [r12, #0]
    b .FourWhile_label4+0
.FourWhile_label4:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#20
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
    bne .FourWhile_label9+0
    b .FourWhile_label12+0
.FourWhile_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #0
    str lr, [r12, #0]
    b .FourWhile_label20+0
.FourWhile_label12:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #44]
    ldr lr, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr r12, [sp, #40]
    ldr lr, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #56]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr r0, [sp, #64]
    mov r12, #164
    add sp, sp, r12
    pop {pc}
.FourWhile_label20:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    cmp r12, #0
    bne .FourWhile_label25+0
    b .FourWhile_label28+0
.FourWhile_label25:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #4
    str lr, [r12, #0]
    b .FourWhile_label31+0
.FourWhile_label28:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    add r12, sp, #4
    str lr, [r12, #0]
    b .FourWhile_label4+0
.FourWhile_label31:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#7
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
    bne .FourWhile_label36+0
    b .FourWhile_label39+0
.FourWhile_label36:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #8
    str lr, [r12, #0]
    b .FourWhile_label42+0
.FourWhile_label39:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #8
    str lr, [r12, #0]
    b .FourWhile_label20+0
.FourWhile_label42:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#20
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #144]
    ldr r12, [sp, #144]
    cmp r12, #0
    bne .FourWhile_label47+0
    b .FourWhile_label50+0
.FourWhile_label47:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #12
    str lr, [r12, #0]
    b .FourWhile_label42+0
.FourWhile_label50:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    add r12, sp, #12
    str lr, [r12, #0]
    b .FourWhile_label31+0
.FourWhile_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl FourWhile
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
