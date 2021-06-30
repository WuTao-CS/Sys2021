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
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .main_label4+0
.main_label4:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#21
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
    mov r12, #148
    add sp, sp, r12
    pop {pc}
.main_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, =#101
    ldr lr, [sp, #36]
    sub r12, r12, lr
    str r12, [sp, #40]
    ldr r12, [sp, #32]
    ldr lr, [sp, #40]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    b .main_label34+0
.main_label18:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, =#100
    ldr lr, [sp, #56]
    sub r12, r12, lr
    str r12, [sp, #60]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #60]
    ldr lr, [sp, #64]
    sub r12, r12, lr
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, =#5
    ldr lr, [sp, #72]
    mul r12, r12, lr
    str r12, [sp, #76]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, =#1
    ldr lr, [sp, #80]
    mul r12, r12, lr
    str r12, [sp, #84]
    ldr r12, [sp, #76]
    ldr lr, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r0, [sp, #92]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #96]
    ldr r12, [sp, #88]
    ldr lr, [sp, #96]
    add r12, r12, lr
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#100
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
    bne .main_label37+0
    b .main_label42+0
.main_label34:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label4+0
.main_label37:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r0, [sp, #124]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r0, [sp, #128]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r0, [sp, #132]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r0, [sp, #136]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    b .main_label42+0
.main_label42:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #4
    str lr, [r12, #0]
    b .main_label11+0
.main_post:
    .data
