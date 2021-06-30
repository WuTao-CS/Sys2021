    .arch armv7-a
    .file ""
    .text
    .global EightWhile
    .global main
    .syntax unified
    .arm
    .global g
    .global h
    .global f
    .global e
.global_vars:
    .long g
    .long h
    .long f
    .long e
EightWhile:
.EightWhile_pre:
    push {lr}
    mov r12, #324
    sub sp, sp, r12
.EightWhile_entry:
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
    b .EightWhile_label4+0
.EightWhile_label4:
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
    bne .EightWhile_label9+0
    b .EightWhile_label12+0
.EightWhile_label9:
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
    b .EightWhile_label28+0
.EightWhile_label12:
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
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #68]
    ldr lr, [sp, #72]
    add r12, r12, lr
    str r12, [sp, #76]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, [sp, #76]
    ldr lr, [sp, #80]
    sub r12, r12, lr
    str r12, [sp, #84]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #84]
    ldr lr, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #92]
    ldr r12, [sp, #64]
    ldr lr, [sp, #92]
    sub r12, r12, lr
    str r12, [sp, #96]
    ldr r0, [sp, #96]
    mov r12, #324
    add sp, sp, r12
    pop {pc}
.EightWhile_label28:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .EightWhile_label33+0
    b .EightWhile_label36+0
.EightWhile_label33:
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
    b .EightWhile_label39+0
.EightWhile_label36:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #4
    str lr, [r12, #0]
    b .EightWhile_label4+0
.EightWhile_label39:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#7
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .EightWhile_label44+0
    b .EightWhile_label47+0
.EightWhile_label44:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #8
    str lr, [r12, #0]
    b .EightWhile_label50+0
.EightWhile_label47:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    add r12, sp, #8
    str lr, [r12, #0]
    b .EightWhile_label28+0
.EightWhile_label50:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#20
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    cmp r12, #0
    bne .EightWhile_label55+0
    b .EightWhile_label58+0
.EightWhile_label55:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr r12, [sp, #180]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    add r12, sp, #12
    str lr, [r12, #0]
    b .EightWhile_label61+0
.EightWhile_label58:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr r12, [sp, #188]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    add r12, sp, #12
    str lr, [r12, #0]
    b .EightWhile_label39+0
.EightWhile_label61:
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr r12, [sp, #196]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    str r12, [sp, #204]
    ldr r12, [sp, #204]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    cmp r12, #0
    bne .EightWhile_label66+0
    b .EightWhile_label69+0
.EightWhile_label66:
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    adrl r11, .global_vars+12
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label72+0
.EightWhile_label69:
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    adrl r11, .global_vars+12
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label50+0
.EightWhile_label72:
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    ldr lr, =#2
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #232]
    ldr r12, [sp, #232]
    str r12, [sp, #236]
    ldr r12, [sp, #236]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    cmp r12, #0
    bne .EightWhile_label77+0
    b .EightWhile_label80+0
.EightWhile_label77:
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r12, [sp, #244]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label83+0
.EightWhile_label80:
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #252]
    ldr r12, [sp, #252]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #256]
    ldr lr, [sp, #256]
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label61+0
.EightWhile_label83:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr r12, [sp, #260]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #264]
    ldr r12, [sp, #264]
    str r12, [sp, #268]
    ldr r12, [sp, #268]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    cmp r12, #0
    bne .EightWhile_label88+0
    b .EightWhile_label91+0
.EightWhile_label88:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    ldr lr, =#10
    add r12, r12, lr
    str r12, [sp, #280]
    ldr lr, [sp, #280]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label94+0
.EightWhile_label91:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r12, [sp, #284]
    ldr lr, =#8
    sub r12, r12, lr
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label72+0
.EightWhile_label94:
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #292]
    ldr r12, [sp, #292]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #296]
    ldr r12, [sp, #296]
    str r12, [sp, #300]
    ldr r12, [sp, #300]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    cmp r12, #0
    bne .EightWhile_label99+0
    b .EightWhile_label102+0
.EightWhile_label99:
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #308]
    ldr r12, [sp, #308]
    ldr lr, =#8
    add r12, r12, lr
    str r12, [sp, #312]
    ldr lr, [sp, #312]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label94+0
.EightWhile_label102:
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr r12, [sp, #316]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #320]
    ldr lr, [sp, #320]
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    b .EightWhile_label83+0
.EightWhile_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    ldr lr, =#1
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#2
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#4
    adrl r11, .global_vars+12
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#6
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl EightWhile
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
g:
    .long 0
h:
    .long 0
f:
    .long 0
e:
    .long 0
