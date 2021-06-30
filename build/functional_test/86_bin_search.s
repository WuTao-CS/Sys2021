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
    mov r12, #288
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
    b .main_label28+0
.main_label28:
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #144]
    ldr lr, [sp, #148]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #160]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr r12, [sp, #164]
    ldr lr, [sp, #168]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #180]
    ldr r12, [sp, #160]
    ldr lr, [sp, #180]
    and r12, r12, lr
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    cmp r12, #0
    bne .main_label42+0
    b .main_label54+0
.main_label42:
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #188]
    ldr lr, [sp, #192]
    add r12, r12, lr
    str r12, [sp, #196]
    ldr r0, [sp, #196]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #200]
    ldr lr, [sp, #200]
    add r12, sp, #100
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr lr, [sp, #208]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #204]
    ldr lr, [sp, #216]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    str r12, [sp, #224]
    ldr r12, [sp, #224]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    cmp r12, #0
    bne .main_label62+0
    b .main_label65+0
.main_label54:
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr lr, [sp, #236]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #8
    add r12, r12, lr
    str r12, [sp, #240]
    ldr lr, [sp, #240]
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r12, [sp, #232]
    ldr lr, [sp, #244]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #248]
    ldr r12, [sp, #248]
    str r12, [sp, #252]
    ldr r12, [sp, #252]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #256]
    ldr r12, [sp, #256]
    cmp r12, #0
    bne .main_label69+0
    b .main_label71+0
.main_label62:
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr r12, [sp, #260]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    add r12, sp, #92
    str lr, [r12, #0]
    b .main_label68+0
.main_label65:
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr r12, [sp, #268]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #272]
    ldr lr, [sp, #272]
    add r12, sp, #96
    str lr, [r12, #0]
    b .main_label68+0
.main_label68:
    b .main_label28+0
.main_label69:
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    ldr r0, [sp, #276]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label73+0
.main_label71:
    ldr lr, =#0
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr r0, [sp, #280]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label73+0
.main_label73:
    ldr lr, =#10
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r0, [sp, #284]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #288
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
