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
    mov r12, #248
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label3+0
.main_label3:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    cmp r12, #0
    bne .main_label8+0
    b .main_label15+0
.main_label8:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #68]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label3+0
.main_label15:
    ldr lr, =#10
    add r12, sp, #104
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    add r12, sp, #92
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #96
    str lr, [r12, #0]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #120]
    ldr lr, [sp, #124]
    add r12, r12, lr
    str r12, [sp, #128]
    ldr r0, [sp, #128]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #132]
    ldr lr, [sp, #132]
    add r12, sp, #100
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #136
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #140
    str lr, [r12, #0]
    b .main_label30+0
.main_label30:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r12, [sp, #144]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #156]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #172]
    ldr r12, [sp, #156]
    ldr lr, [sp, #172]
    and r12, r12, lr
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    cmp r12, #0
    bne .main_label40+0
    b .main_label48+0
.main_label40:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #188]
    ldr lr, [sp, #192]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #196]
    ldr r12, [sp, #196]
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #204]
    ldr r12, [sp, #204]
    cmp r12, #0
    bne .main_label53+0
    b .main_label55+0
.main_label48:
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    cmp r12, #0
    bne .main_label58+0
    b .main_label60+0
.main_label53:
    ldr lr, =#1
    add r12, sp, #136
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    add r12, sp, #140
    str lr, [r12, #0]
    b .main_label55+0
.main_label55:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, [sp, #232]
    add r12, sp, #0
    str lr, [r12, #0]
    b .main_label30+0
.main_label58:
    add lr, sp, #140
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r0, [sp, #236]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label62+0
.main_label60:
    ldr lr, =#0
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr r0, [sp, #240]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label62+0
.main_label62:
    ldr lr, =#10
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r0, [sp, #244]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #248
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
