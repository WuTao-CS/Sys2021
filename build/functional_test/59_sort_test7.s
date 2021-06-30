    .arch armv7-a
    .file ""
    .text
    .global Merge
    .global MergeSort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
Merge:
.Merge_pre:
    push {lr}
    mov r12, #556
    sub sp, sp, r12
.Merge_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #40]
    ldr lr, [sp, #44]
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #36
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #132
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #136
    str lr, [r12, #0]
    b .Merge_label21+0
.Merge_label21:
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #16
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
    bne .Merge_label27+0
    b .Merge_label38+0
.Merge_label27:
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #52
    add r12, r12, lr
    str r12, [sp, #164]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r12, [sp, #172]
    ldr lr, [sp, #176]
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #168]
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    ldr r12, [sp, #164]
    str lr, [r12, #0]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #132
    str lr, [r12, #0]
    b .Merge_label21+0
.Merge_label38:
    b .Merge_label39+0
.Merge_label39:
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr r12, [sp, #200]
    ldr lr, [sp, #204]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .Merge_label45+0
    b .Merge_label57+0
.Merge_label45:
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #92
    add r12, r12, lr
    str r12, [sp, #224]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r12, [sp, #232]
    ldr lr, [sp, #236]
    add r12, r12, lr
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #228]
    add r12, r12, lr
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    ldr r12, [lr, #0]
    str r12, [sp, #252]
    ldr lr, [sp, #252]
    ldr r12, [sp, #224]
    str lr, [r12, #0]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r12, [sp, #256]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    add r12, sp, #136
    str lr, [r12, #0]
    b .Merge_label39+0
.Merge_label57:
    ldr lr, =#0
    add r12, sp, #132
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #136
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    add r12, sp, #264
    str lr, [r12, #0]
    b .Merge_label60+0
.Merge_label60:
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    ldr r12, [sp, #272]
    ldr lr, [sp, #276]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    str r12, [sp, #284]
    ldr r12, [sp, #284]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #288]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #292]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr r12, [sp, #292]
    ldr lr, [sp, #296]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #300]
    ldr r12, [sp, #300]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #308]
    ldr r12, [sp, #288]
    ldr lr, [sp, #308]
    and r12, r12, lr
    str r12, [sp, #312]
    ldr r12, [sp, #312]
    cmp r12, #0
    bne .Merge_label72+0
    b .Merge_label83+0
.Merge_label72:
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr lr, [sp, #316]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #52
    add r12, r12, lr
    str r12, [sp, #320]
    ldr lr, [sp, #320]
    ldr r12, [lr, #0]
    str r12, [sp, #324]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr lr, [sp, #328]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #92
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #340]
    ldr r12, [sp, #324]
    ldr lr, [sp, #340]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #344]
    ldr r12, [sp, #344]
    str r12, [sp, #348]
    ldr r12, [sp, #348]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    cmp r12, #0
    bne .Merge_label84+0
    b .Merge_label95+0
.Merge_label83:
    b .Merge_label107+0
.Merge_label84:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #356]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr lr, [sp, #360]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #356]
    add r12, r12, lr
    str r12, [sp, #364]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr lr, [sp, #368]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #52
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    ldr lr, [sp, #376]
    ldr r12, [sp, #364]
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr r12, [sp, #380]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr r12, [sp, #388]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #392]
    ldr lr, [sp, #392]
    add r12, sp, #132
    str lr, [r12, #0]
    b .Merge_label106+0
.Merge_label95:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #400]
    ldr lr, [sp, #400]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #396]
    add r12, r12, lr
    str r12, [sp, #404]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr lr, [sp, #408]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #92
    add r12, r12, lr
    str r12, [sp, #412]
    ldr lr, [sp, #412]
    ldr r12, [lr, #0]
    str r12, [sp, #416]
    ldr lr, [sp, #416]
    ldr r12, [sp, #404]
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #420]
    ldr r12, [sp, #420]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #424]
    ldr lr, [sp, #424]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr r12, [sp, #428]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #432]
    ldr lr, [sp, #432]
    add r12, sp, #136
    str lr, [r12, #0]
    b .Merge_label106+0
.Merge_label106:
    b .Merge_label60+0
.Merge_label107:
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #436]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #440]
    ldr r12, [sp, #436]
    ldr lr, [sp, #440]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #444]
    ldr r12, [sp, #444]
    str r12, [sp, #448]
    ldr r12, [sp, #448]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #452]
    ldr r12, [sp, #452]
    cmp r12, #0
    bne .Merge_label113+0
    b .Merge_label124+0
.Merge_label113:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #456]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #460]
    ldr lr, [sp, #460]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #456]
    add r12, r12, lr
    str r12, [sp, #464]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #468]
    ldr lr, [sp, #468]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #52
    add r12, r12, lr
    str r12, [sp, #472]
    ldr lr, [sp, #472]
    ldr r12, [lr, #0]
    str r12, [sp, #476]
    ldr lr, [sp, #476]
    ldr r12, [sp, #464]
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #480]
    ldr r12, [sp, #480]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #484]
    ldr lr, [sp, #484]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #488]
    ldr r12, [sp, #488]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #492]
    ldr lr, [sp, #492]
    add r12, sp, #132
    str lr, [r12, #0]
    b .Merge_label107+0
.Merge_label124:
    b .Merge_label125+0
.Merge_label125:
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #496]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #500]
    ldr r12, [sp, #496]
    ldr lr, [sp, #500]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #504]
    ldr r12, [sp, #504]
    str r12, [sp, #508]
    ldr r12, [sp, #508]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #512]
    ldr r12, [sp, #512]
    cmp r12, #0
    bne .Merge_label131+0
    b .Merge_label142+0
.Merge_label131:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #516]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #520]
    ldr lr, [sp, #520]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #516]
    add r12, r12, lr
    str r12, [sp, #524]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #528]
    ldr lr, [sp, #528]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #92
    add r12, r12, lr
    str r12, [sp, #532]
    ldr lr, [sp, #532]
    ldr r12, [lr, #0]
    str r12, [sp, #536]
    ldr lr, [sp, #536]
    ldr r12, [sp, #524]
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #540]
    ldr r12, [sp, #540]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #544]
    ldr lr, [sp, #544]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #548]
    ldr r12, [sp, #548]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #552]
    ldr lr, [sp, #552]
    add r12, sp, #136
    str lr, [r12, #0]
    b .Merge_label125+0
.Merge_label142:
    ldr r0, =#0
    mov r12, #556
    add sp, sp, r12
    pop {pc}
.Merge_post:
MergeSort:
.MergeSort_pre:
    push {lr}
    mov r12, #116
    sub sp, sp, r12
.MergeSort_entry:
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
    bne .MergeSort_label11+0
    b .MergeSort_label33+0
.MergeSort_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #36]
    ldr lr, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #44]
    ldr r0, [sp, #44]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #48]
    ldr lr, [sp, #48]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r0, [sp, #56]
    ldr r1, [sp, #60]
    ldr r2, [sp, #64]
    mov r12, #0
    sub sp, sp, r12
    bl MergeSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r0, [sp, #80]
    ldr r1, [sp, #84]
    ldr r2, [sp, #88]
    mov r12, #0
    sub sp, sp, r12
    bl MergeSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r0, [sp, #96]
    ldr r1, [sp, #100]
    ldr r2, [sp, #104]
    ldr r3, [sp, #108]
    mov r12, #0
    sub sp, sp, r12
    bl Merge
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #112]
    ldr lr, [sp, #112]
    add r12, sp, #52
    str lr, [r12, #0]
    b .MergeSort_label33+0
.MergeSort_label33:
    ldr r0, =#0
    mov r12, #116
    add sp, sp, r12
    pop {pc}
.MergeSort_post:
main:
.main_pre:
    push {lr}
    mov r12, #160
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
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #84
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r0, [sp, #96]
    ldr r1, [sp, #100]
    ldr r2, [sp, #104]
    mov r12, #0
    sub sp, sp, r12
    bl MergeSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label19+0
.main_label19:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #112]
    ldr lr, [sp, #116]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    cmp r12, #0
    bne .main_label25+0
    b .main_label33+0
.main_label25:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r0, [sp, #144]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r0, [sp, #148]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label19+0
.main_label33:
    ldr r0, =#0
    mov r12, #160
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
