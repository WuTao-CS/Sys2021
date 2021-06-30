    .arch armv7-a
    .file ""
    .text
    .global concat
    .global main
    .syntax unified
    .arm
.global_vars:
concat:
.concat_pre:
    push {lr}
    mov r12, #132
    sub sp, sp, r12
.concat_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .concat_label7+0
.concat_label7:
    add lr, sp, #12
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
    bne .concat_label12+0
    b .concat_label22+0
.concat_label12:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #40]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #44]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #12
    str lr, [r12, #0]
    b .concat_label7+0
.concat_label22:
    ldr lr, =#0
    add r12, sp, #68
    str lr, [r12, #0]
    b .concat_label24+0
.concat_label24:
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    cmp r12, #0
    bne .concat_label29+0
    b .concat_label41+0
.concat_label29:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #100]
    add r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    ldr r12, [sp, #96]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #68
    str lr, [r12, #0]
    b .concat_label24+0
.concat_label41:
    ldr r0, =#0
    mov r12, #132
    add sp, sp, r12
    pop {pc}
.concat_post:
main:
.main_pre:
    push {lr}
    mov r12, #284
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label10:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    cmp r12, #0
    bne .main_label15+0
    b .main_label36+0
.main_label15:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #144]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    ldr r12, [sp, #144]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #156]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    ldr r12, [sp, #156]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #168]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [sp, #168]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #180]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [sp, #180]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #192]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    ldr r12, [sp, #192]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #204]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr lr, [sp, #208]
    ldr r12, [sp, #204]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label36:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #228]
    ldr r0, [sp, #220]
    ldr r1, [sp, #224]
    ldr r2, [sp, #228]
    mov r12, #0
    sub sp, sp, r12
    bl concat
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #232]
    ldr lr, [sp, #232]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label42+0
.main_label42:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    ldr lr, =#6
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #244]
    ldr r12, [sp, #244]
    str r12, [sp, #248]
    ldr r12, [sp, #248]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #252]
    ldr r12, [sp, #252]
    cmp r12, #0
    bne .main_label47+0
    b .main_label54+0
.main_label47:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr lr, [sp, #256]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    add r12, sp, #236
    str lr, [r12, #0]
    add lr, sp, #236
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr r0, [sp, #268]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, [sp, #276]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label42+0
.main_label54:
    ldr lr, =#10
    add r12, sp, #236
    str lr, [r12, #0]
    add lr, sp, #236
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr r0, [sp, #280]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #284
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
