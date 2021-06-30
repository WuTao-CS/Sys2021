    .arch armv7-a
    .file ""
    .text
    .global sub
    .global main
    .syntax unified
    .arm
    .global N
    .global M
    .global L
.global_vars:
    .long N
    .long M
    .long L
sub:
.sub_pre:
    push {lr}
    mov r12, #228
    sub sp, sp, r12
    ldr r12, [sp, #232]
    str r12, [sp, #0]
    ldr r12, [sp, #236]
    str r12, [sp, #4]
    ldr r12, [sp, #240]
    str r12, [sp, #8]
    ldr r12, [sp, #244]
    str r12, [sp, #12]
    ldr r12, [sp, #248]
    str r12, [sp, #16]
.sub_entry:
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
    b .sub_label19+0
.sub_label19:
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    cmp r12, #0
    bne .sub_label24+0
    b .sub_label63+0
.sub_label24:
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #84]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #104]
    add r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #100]
    ldr lr, [sp, #116]
    sub r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [sp, #84]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #124]
    add r12, r12, lr
    str r12, [sp, #132]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #136]
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #152]
    add r12, r12, lr
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr r12, [sp, #148]
    ldr lr, [sp, #164]
    sub r12, r12, lr
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    ldr r12, [sp, #132]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #172]
    add r12, r12, lr
    str r12, [sp, #180]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #184]
    add r12, r12, lr
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #200]
    add r12, r12, lr
    str r12, [sp, #208]
    ldr lr, [sp, #208]
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr r12, [sp, #196]
    ldr lr, [sp, #212]
    sub r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    ldr r12, [sp, #180]
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    add r12, sp, #56
    str lr, [r12, #0]
    b .sub_label19+0
.sub_label63:
    ldr r0, =#0
    mov r12, #228
    add sp, sp, r12
    pop {pc}
.sub_post:
main:
.main_pre:
    push {lr}
    mov r12, #396
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+8
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
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #236]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #240]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #248]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #252]
    ldr r0, [sp, #220]
    ldr r1, [sp, #224]
    ldr r2, [sp, #228]
    ldr r3, [sp, #232]
    ldr r12, [sp, #252]
    str r12, [sp, #-4]
    ldr r12, [sp, #248]
    str r12, [sp, #-8]
    ldr r12, [sp, #244]
    str r12, [sp, #-12]
    ldr r12, [sp, #240]
    str r12, [sp, #-16]
    ldr r12, [sp, #236]
    str r12, [sp, #-20]
    mov r12, #20
    sub sp, sp, r12
    bl sub
    mov r12, #20
    add sp, sp, r12
    str r0, [sp, #256]
    ldr lr, [sp, #256]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label48+0
.main_label48:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    ldr r12, [sp, #264]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #268]
    ldr r12, [sp, #268]
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    cmp r12, #0
    bne .main_label53+0
    b .main_label60+0
.main_label53:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr lr, [sp, #280]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, [sp, #284]
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    add r12, sp, #260
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #292]
    ldr r0, [sp, #292]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr r12, [sp, #296]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label48+0
.main_label60:
    ldr lr, =#10
    add r12, sp, #260
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r0, [sp, #304]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    b .main_label62+0
.main_label62:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #308]
    ldr r12, [sp, #308]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #312]
    ldr r12, [sp, #312]
    str r12, [sp, #316]
    ldr r12, [sp, #316]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    cmp r12, #0
    bne .main_label67+0
    b .main_label74+0
.main_label67:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #328]
    ldr lr, [sp, #328]
    ldr r12, [lr, #0]
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    add r12, sp, #260
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r0, [sp, #336]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #340]
    ldr r12, [sp, #340]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #344]
    ldr lr, [sp, #344]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label62+0
.main_label74:
    ldr lr, =#10
    add r12, sp, #260
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r0, [sp, #348]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    b .main_label76+0
.main_label76:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    ldr lr, =#3
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #356]
    ldr r12, [sp, #356]
    str r12, [sp, #360]
    ldr r12, [sp, #360]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #364]
    ldr r12, [sp, #364]
    cmp r12, #0
    bne .main_label81+0
    b .main_label88+0
.main_label81:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr lr, [sp, #368]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    ldr lr, [sp, #376]
    add r12, sp, #260
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr r0, [sp, #380]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #384]
    ldr r12, [sp, #384]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label76+0
.main_label88:
    ldr lr, =#10
    add r12, sp, #260
    str lr, [r12, #0]
    add lr, sp, #260
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr r0, [sp, #392]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #396
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
N:
    .long 0
M:
    .long 0
L:
    .long 0
