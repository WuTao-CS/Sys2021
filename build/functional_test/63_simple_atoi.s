    .arch armv7-a
    .file ""
    .text
    .global atoi_
    .global main
    .syntax unified
    .arm
.global_vars:
atoi_:
.atoi__pre:
    push {lr}
    mov r12, #360
    sub sp, sp, r12
.atoi__entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .atoi__label5+0
.atoi__label5:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #16]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    cmp r12, #0
    bne .atoi__label13+0
    b .atoi__label16+0
.atoi__label13:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #12
    str lr, [r12, #0]
    b .atoi__label5+0
.atoi__label16:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#43
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #76]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    ldr lr, =#45
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #104]
    ldr r12, [sp, #76]
    ldr lr, [sp, #104]
    orr r12, r12, lr
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    cmp r12, #0
    bne .atoi__label32+0
    b .atoi__label40+0
.atoi__label32:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #112]
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#45
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .atoi__label57+0
    b .atoi__label59+0
.atoi__label40:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #12
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
    ldr r12, [sp, #152]
    ldr lr, =#48
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #164]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #168]
    add r12, r12, lr
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr r12, [sp, #180]
    ldr lr, =#57
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    str r12, [sp, #188]
    ldr r12, [sp, #188]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #192]
    ldr r12, [sp, #164]
    ldr lr, [sp, #192]
    orr r12, r12, lr
    str r12, [sp, #196]
    ldr r12, [sp, #196]
    cmp r12, #0
    bne .atoi__label62+0
    b .atoi__label64+0
.atoi__label56:
    b .atoi__label65+0
.atoi__label57:
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    add r12, sp, #8
    str lr, [r12, #0]
    b .atoi__label59+0
.atoi__label59:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr r12, [sp, #204]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #208]
    ldr lr, [sp, #208]
    add r12, sp, #12
    str lr, [r12, #0]
    b .atoi__label56+0
.atoi__label62:
    ldr lr, =#2147483647
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr r0, [sp, #212]
    mov r12, #360
    add sp, sp, r12
    pop {pc}
.atoi__label64:
    b .atoi__label56+0
.atoi__label65:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #216]
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #232]
    ldr r12, [sp, #232]
    str r12, [sp, #236]
    ldr r12, [sp, #236]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #240]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #244]
    add r12, r12, lr
    str r12, [sp, #252]
    ldr lr, [sp, #252]
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r12, [sp, #256]
    ldr lr, =#47
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #260]
    ldr r12, [sp, #260]
    str r12, [sp, #264]
    ldr r12, [sp, #264]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #268]
    ldr r12, [sp, #240]
    ldr lr, [sp, #268]
    and r12, r12, lr
    str r12, [sp, #272]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr lr, [sp, #280]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #276]
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, [sp, #284]
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr r12, [sp, #288]
    ldr lr, =#58
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #292]
    ldr r12, [sp, #292]
    str r12, [sp, #296]
    ldr r12, [sp, #296]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #300]
    ldr r12, [sp, #272]
    ldr lr, [sp, #300]
    and r12, r12, lr
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    cmp r12, #0
    bne .atoi__label89+0
    b .atoi__label100+0
.atoi__label89:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #308]
    ldr r12, [sp, #308]
    ldr lr, =#10
    mul r12, r12, lr
    str r12, [sp, #312]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr lr, [sp, #320]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #316]
    add r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr r12, [sp, #312]
    ldr lr, [sp, #328]
    add r12, r12, lr
    str r12, [sp, #332]
    ldr r12, [sp, #332]
    ldr lr, =#48
    sub r12, r12, lr
    str r12, [sp, #336]
    ldr lr, [sp, #336]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #340]
    ldr r12, [sp, #340]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #344]
    ldr lr, [sp, #344]
    add r12, sp, #12
    str lr, [r12, #0]
    b .atoi__label65+0
.atoi__label100:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #348]
    ldr lr, [sp, #352]
    mul r12, r12, lr
    str r12, [sp, #356]
    ldr r0, [sp, #356]
    mov r12, #360
    add sp, sp, r12
    pop {pc}
.atoi__post:
main:
.main_pre:
    push {lr}
    mov r12, #2068
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label3+0
.main_label3:
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2008]
    ldr r12, [sp, #2008]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2012]
    ldr r12, [sp, #2012]
    str r12, [sp, #2016]
    ldr r12, [sp, #2016]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2020]
    ldr r12, [sp, #2020]
    cmp r12, #0
    bne .main_label8+0
    b .main_label15+0
.main_label8:
    mov r12, #0
    sub sp, sp, r12
    bl getch
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #2024]
    ldr lr, [sp, #2024]
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2028]
    ldr lr, [sp, #2028]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #2032]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2036]
    ldr lr, [sp, #2036]
    ldr r12, [sp, #2032]
    str lr, [r12, #0]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2040]
    ldr r12, [sp, #2040]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #2044]
    ldr lr, [sp, #2044]
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label3+0
.main_label15:
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2048]
    ldr lr, [sp, #2048]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #2052]
    ldr lr, =#0
    ldr r12, [sp, #2052]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #2056]
    ldr r0, [sp, #2056]
    mov r12, #0
    sub sp, sp, r12
    bl atoi_
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #2060]
    ldr lr, [sp, #2060]
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2064]
    ldr r0, [sp, #2064]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #2068
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
