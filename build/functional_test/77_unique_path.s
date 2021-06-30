    .arch armv7-a
    .file ""
    .text
    .global uniquePaths
    .global main
    .syntax unified
    .arm
.global_vars:
uniquePaths:
.uniquePaths_pre:
    push {lr}
    mov r12, #352
    sub sp, sp, r12
.uniquePaths_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #20]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #20]
    ldr lr, [sp, #36]
    orr r12, r12, lr
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    cmp r12, #0
    bne .uniquePaths_label13+0
    b .uniquePaths_label14+0
.uniquePaths_label13:
    ldr r0, =#1
    mov r12, #352
    add sp, sp, r12
    pop {pc}
.uniquePaths_label14:
    ldr lr, =#0
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label18+0
.uniquePaths_label18:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r12, [sp, #88]
    ldr lr, [sp, #92]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    cmp r12, #0
    bne .uniquePaths_label24+0
    b .uniquePaths_label33+0
.uniquePaths_label24:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#3
    mul r12, r12, lr
    str r12, [sp, #112]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #112]
    ldr lr, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, =#1
    ldr r12, [sp, #128]
    str lr, [r12, #0]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label18+0
.uniquePaths_label33:
    ldr lr, =#0
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label34+0
.uniquePaths_label34:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r12, [sp, #140]
    ldr lr, [sp, #144]
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
    ldr r12, [sp, #156]
    cmp r12, #0
    bne .uniquePaths_label40+0
    b .uniquePaths_label49+0
.uniquePaths_label40:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#3
    mul r12, r12, lr
    str r12, [sp, #168]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr r12, [sp, #168]
    ldr lr, [sp, #172]
    add r12, r12, lr
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, =#1
    ldr r12, [sp, #180]
    str lr, [r12, #0]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label34+0
.uniquePaths_label49:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label52+0
.uniquePaths_label52:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #204]
    ldr r12, [sp, #200]
    ldr lr, [sp, #204]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    cmp r12, #0
    bne .uniquePaths_label58+0
    b .uniquePaths_label61+0
.uniquePaths_label58:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    add r12, sp, #84
    str lr, [r12, #0]
    b .uniquePaths_label64+0
.uniquePaths_label61:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, [sp, #228]
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    ldr r0, [sp, #232]
    mov r12, #352
    add sp, sp, r12
    pop {pc}
.uniquePaths_label64:
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #240]
    ldr r12, [sp, #236]
    ldr lr, [sp, #240]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .uniquePaths_label70+0
    b .uniquePaths_label93+0
.uniquePaths_label70:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r12, [sp, #256]
    ldr lr, =#3
    mul r12, r12, lr
    str r12, [sp, #260]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    ldr r12, [sp, #260]
    ldr lr, [sp, #264]
    add r12, r12, lr
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #272]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    ldr lr, =#3
    mul r12, r12, lr
    str r12, [sp, #284]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr r12, [sp, #284]
    ldr lr, [sp, #288]
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #296]
    ldr lr, [sp, #296]
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#3
    mul r12, r12, lr
    str r12, [sp, #308]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    ldr r12, [sp, #308]
    ldr lr, [sp, #312]
    add r12, r12, lr
    str r12, [sp, #316]
    ldr r12, [sp, #316]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #320]
    ldr lr, [sp, #320]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #44
    add r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr r12, [sp, #300]
    ldr lr, [sp, #328]
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    ldr r12, [sp, #272]
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #84
    str lr, [r12, #0]
    b .uniquePaths_label64+0
.uniquePaths_label93:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    ldr r12, [sp, #344]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #348]
    ldr lr, [sp, #348]
    add r12, sp, #80
    str lr, [r12, #0]
    b .uniquePaths_label52+0
.uniquePaths_post:
main:
.main_pre:
    push {lr}
    mov r12, #24
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r0, [sp, #8]
    ldr r1, [sp, #12]
    mov r12, #0
    sub sp, sp, r12
    bl uniquePaths
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r0, [sp, #20]
    mov r12, #24
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
