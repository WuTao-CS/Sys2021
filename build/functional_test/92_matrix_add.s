    .arch armv7-a
    .file ""
    .text
    .global add
    .global main
    .syntax unified
    .arm
    .global M
    .global L
    .global N
.global_vars:
    .long M
    .long L
    .long N
add:
.add_pre:
    push {lr}
    mov r12, #232
    sub sp, sp, r12
    ldr r12, [sp, #236]
    str r12, [sp, #0]
    ldr r12, [sp, #240]
    str r12, [sp, #4]
    ldr r12, [sp, #244]
    str r12, [sp, #8]
    ldr r12, [sp, #248]
    str r12, [sp, #12]
    ldr r12, [sp, #252]
    str r12, [sp, #16]
.add_entry:
    mov lr, r0
    add r12, sp, #20
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #24
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #28
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #32
    str lr, [r12, #0]
    ldr lr, [sp, #0]
    add r12, sp, #36
    str lr, [r12, #0]
    ldr lr, [sp, #4]
    add r12, sp, #40
    str lr, [r12, #0]
    ldr lr, [sp, #8]
    add r12, sp, #44
    str lr, [r12, #0]
    ldr lr, [sp, #12]
    add r12, sp, #48
    str lr, [r12, #0]
    ldr lr, [sp, #16]
    add r12, sp, #52
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #56
    str lr, [r12, #0]
    b .add_label19+0
.add_label19:
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #60]
    ldr lr, [sp, #64]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    cmp r12, #0
    bne .add_label25+0
    b .add_label64+0
.add_label25:
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #92]
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #108]
    add r12, r12, lr
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr r12, [sp, #104]
    ldr lr, [sp, #120]
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    ldr r12, [sp, #88]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #128]
    add r12, r12, lr
    str r12, [sp, #136]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #140]
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #156]
    add r12, r12, lr
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr r12, [sp, #152]
    ldr lr, [sp, #168]
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [sp, #136]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #176]
    add r12, r12, lr
    str r12, [sp, #184]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #188]
    add r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr lr, [sp, #208]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #204]
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #200]
    ldr lr, [sp, #216]
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    ldr r12, [sp, #184]
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    ldr r12, [sp, #224]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, [sp, #228]
    add r12, sp, #56
    str lr, [r12, #0]
    b .add_label19+0
.add_label64:
    ldr r0, =#0
    mov r12, #232
    add sp, sp, r12
    pop {pc}
.add_post:
main:
.main_pre:
    push {lr}
    mov r12, #412
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label10:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #124]
    ldr lr, [sp, #128]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    cmp r12, #0
    bne .main_label16+0
    b .main_label37+0
.main_label16:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #148]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    ldr r12, [sp, #148]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #160]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    ldr r12, [sp, #160]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #172]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    ldr r12, [sp, #172]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #184]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    ldr r12, [sp, #184]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #196]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    ldr r12, [sp, #196]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #208]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [sp, #208]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label37:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #236]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #240]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #248]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #252]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #256]
    ldr r0, [sp, #224]
    ldr r1, [sp, #228]
    ldr r2, [sp, #232]
    ldr r3, [sp, #236]
    ldr r12, [sp, #256]
    str r12, [sp, #-4]
    ldr r12, [sp, #252]
    str r12, [sp, #-8]
    ldr r12, [sp, #248]
    str r12, [sp, #-12]
    ldr r12, [sp, #244]
    str r12, [sp, #-16]
    ldr r12, [sp, #240]
    str r12, [sp, #-20]
    mov r12, #20
    sub sp, sp, r12
    bl add
    mov r12, #20
    add sp, sp, r12
    str r0, [sp, #260]
    ldr lr, [sp, #260]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label49+0
.main_label49:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #268]
    ldr lr, [sp, #272]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #284]
    ldr r12, [sp, #284]
    cmp r12, #0
    bne .main_label55+0
    b .main_label62+0
.main_label55:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr lr, [sp, #296]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    ldr r0, [sp, #300]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label49+0
.main_label62:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    ldr r0, [sp, #312]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label64+0
.main_label64:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, [sp, #316]
    ldr lr, [sp, #320]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #324]
    ldr r12, [sp, #324]
    str r12, [sp, #328]
    ldr r12, [sp, #328]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #332]
    ldr r12, [sp, #332]
    cmp r12, #0
    bne .main_label70+0
    b .main_label77+0
.main_label70:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr lr, [sp, #336]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    ldr lr, [sp, #344]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r0, [sp, #348]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label64+0
.main_label77:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr r0, [sp, #360]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label79+0
.main_label79:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr r12, [sp, #364]
    ldr lr, [sp, #368]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #372]
    ldr r12, [sp, #372]
    str r12, [sp, #376]
    ldr r12, [sp, #376]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #380]
    ldr r12, [sp, #380]
    cmp r12, #0
    bne .main_label85+0
    b .main_label92+0
.main_label85:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr lr, [sp, #392]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    ldr r0, [sp, #396]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #400]
    ldr r12, [sp, #400]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #404]
    ldr lr, [sp, #404]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label79+0
.main_label92:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr r0, [sp, #408]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #412
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
M:
    .long 0
L:
    .long 0
N:
    .long 0
