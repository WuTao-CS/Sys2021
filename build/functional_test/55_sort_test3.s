    .arch armv7-a
    .file ""
    .text
    .global QuickSort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
QuickSort:
.QuickSort_pre:
    push {lr}
    mov r12, #400
    sub sp, sp, r12
.QuickSort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
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
    bne .QuickSort_label11+0
    b .QuickSort_label21+0
.QuickSort_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #4
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
    ldr lr, [sp, #64]
    add r12, sp, #48
    str lr, [r12, #0]
    b .QuickSort_label22+0
.QuickSort_label21:
    ldr r0, =#0
    mov r12, #400
    add sp, sp, r12
    pop {pc}
.QuickSort_label22:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #68]
    ldr lr, [sp, #72]
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
    bne .QuickSort_label28+0
    b .QuickSort_label29+0
.QuickSort_label28:
    b .QuickSort_label47+0
.QuickSort_label29:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [sp, #96]
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r0, [sp, #116]
    ldr r1, [sp, #120]
    ldr r2, [sp, #124]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r0, [sp, #140]
    ldr r1, [sp, #144]
    ldr r2, [sp, #148]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #104
    str lr, [r12, #0]
    b .QuickSort_label21+0
.QuickSort_label47:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #156]
    ldr lr, [sp, #160]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #172]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #176]
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #196]
    ldr r12, [sp, #188]
    ldr lr, [sp, #196]
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
    ldr r12, [sp, #172]
    ldr lr, [sp, #208]
    and r12, r12, lr
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    cmp r12, #0
    bne .QuickSort_label63+0
    b .QuickSort_label66+0
.QuickSort_label63:
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #40
    str lr, [r12, #0]
    b .QuickSort_label47+0
.QuickSort_label66:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #224]
    ldr lr, [sp, #228]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .QuickSort_label72+0
    b .QuickSort_label82+0
.QuickSort_label72:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #244]
    add r12, r12, lr
    str r12, [sp, #252]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #256]
    add r12, r12, lr
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    ldr r12, [sp, #252]
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, [sp, #276]
    add r12, sp, #32
    str lr, [r12, #0]
    b .QuickSort_label82+0
.QuickSort_label82:
    b .QuickSort_label83+0
.QuickSort_label83:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r12, [sp, #280]
    ldr lr, [sp, #284]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #288]
    ldr r12, [sp, #288]
    str r12, [sp, #292]
    ldr r12, [sp, #292]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #296]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr lr, [sp, #304]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #300]
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr r12, [sp, #312]
    ldr lr, [sp, #316]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    str r12, [sp, #324]
    ldr r12, [sp, #324]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #328]
    ldr r12, [sp, #296]
    ldr lr, [sp, #328]
    and r12, r12, lr
    str r12, [sp, #332]
    ldr r12, [sp, #332]
    cmp r12, #0
    bne .QuickSort_label98+0
    b .QuickSort_label101+0
.QuickSort_label98:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #32
    str lr, [r12, #0]
    b .QuickSort_label83+0
.QuickSort_label101:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r12, [sp, #344]
    ldr lr, [sp, #348]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    str r12, [sp, #356]
    ldr r12, [sp, #356]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #360]
    ldr r12, [sp, #360]
    cmp r12, #0
    bne .QuickSort_label107+0
    b .QuickSort_label117+0
.QuickSort_label107:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr lr, [sp, #368]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #364]
    add r12, r12, lr
    str r12, [sp, #372]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr lr, [sp, #380]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #376]
    add r12, r12, lr
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    ldr r12, [sp, #372]
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr r12, [sp, #392]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #396]
    ldr lr, [sp, #396]
    add r12, sp, #40
    str lr, [r12, #0]
    b .QuickSort_label117+0
.QuickSort_label117:
    b .QuickSort_label22+0
.QuickSort_post:
main:
.main_pre:
    push {lr}
    mov r12, #156
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, =#4
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#3
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#9
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#2
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#0
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#1
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#6
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#5
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#7
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, =#8
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #80
    str lr, [r12, #0]
    ldr lr, =#9
    add r12, sp, #84
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #88]
    ldr r1, [sp, #92]
    ldr r2, [sp, #96]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label17+0
.main_label17:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #104]
    ldr lr, [sp, #108]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    cmp r12, #0
    bne .main_label23+0
    b .main_label32+0
.main_label23:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r0, [sp, #140]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r0, [sp, #144]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label17+0
.main_label32:
    ldr r0, =#0
    mov r12, #156
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
