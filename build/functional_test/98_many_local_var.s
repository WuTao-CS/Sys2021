    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
main:
.main_pre:
    push {lr}
    mov r12, #528
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #124]
    ldr lr, [sp, #124]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label32+0
.main_label32:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    ldr lr, =#5
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .main_label37+0
    b .main_label40+0
.main_label37:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r12, [sp, #144]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label32+0
.main_label40:
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    add r12, sp, #20
    str lr, [r12, #0]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    add r12, sp, #28
    str lr, [r12, #0]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    ldr r12, [sp, #224]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, [sp, #228]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    ldr r12, [sp, #232]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #236]
    ldr lr, [sp, #236]
    add r12, sp, #44
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    add r12, sp, #48
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr r12, [sp, #248]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #252]
    ldr lr, [sp, #252]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r12, [sp, #256]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    add r12, sp, #56
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    ldr r12, [sp, #264]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, [sp, #276]
    add r12, sp, #64
    str lr, [r12, #0]
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, [sp, #284]
    add r12, sp, #68
    str lr, [r12, #0]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr r12, [sp, #288]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    add r12, sp, #72
    str lr, [r12, #0]
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr r12, [sp, #296]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    add r12, sp, #76
    str lr, [r12, #0]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    add r12, sp, #80
    str lr, [r12, #0]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    ldr r12, [sp, #312]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #316]
    ldr lr, [sp, #316]
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr r12, [sp, #328]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    add r12, sp, #92
    str lr, [r12, #0]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #96
    str lr, [r12, #0]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    ldr r12, [sp, #344]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #348]
    ldr lr, [sp, #348]
    add r12, sp, #100
    str lr, [r12, #0]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr r12, [sp, #360]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #364]
    ldr lr, [sp, #364]
    add r12, sp, #108
    str lr, [r12, #0]
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr r12, [sp, #368]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    add r12, sp, #112
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    ldr r12, [sp, #376]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #380]
    ldr lr, [sp, #380]
    add r12, sp, #116
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr r0, [sp, #388]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr r0, [sp, #392]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    ldr r0, [sp, #396]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #400]
    ldr r0, [sp, #400]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #404]
    ldr r0, [sp, #404]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr r0, [sp, #408]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #412]
    ldr r0, [sp, #412]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #416]
    ldr r0, [sp, #416]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #420]
    ldr r0, [sp, #420]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #424]
    ldr r0, [sp, #424]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr r0, [sp, #428]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #432]
    ldr r0, [sp, #432]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #436]
    ldr r0, [sp, #436]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #440]
    ldr r0, [sp, #440]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #444]
    ldr r0, [sp, #444]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #448]
    ldr r0, [sp, #448]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #452]
    ldr r0, [sp, #452]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #456]
    ldr r0, [sp, #456]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #460]
    ldr r0, [sp, #460]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #464]
    ldr r0, [sp, #464]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #468]
    ldr r0, [sp, #468]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #472]
    ldr r0, [sp, #472]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #476]
    ldr r0, [sp, #476]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #480]
    ldr r0, [sp, #480]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #484]
    ldr r0, [sp, #484]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #488]
    ldr r0, [sp, #488]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #492]
    ldr r0, [sp, #492]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #496]
    ldr r0, [sp, #496]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #500]
    ldr r0, [sp, #500]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #504]
    ldr r0, [sp, #504]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #508
    str lr, [r12, #0]
    add lr, sp, #508
    ldr r12, [lr, #0]
    str r12, [sp, #512]
    ldr r0, [sp, #512]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #516]
    ldr r0, [sp, #516]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #508
    ldr r12, [lr, #0]
    str r12, [sp, #520]
    ldr r0, [sp, #520]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #524]
    ldr r0, [sp, #524]
    mov r12, #528
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
