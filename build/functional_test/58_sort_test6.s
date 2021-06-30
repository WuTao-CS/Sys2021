    .arch armv7-a
    .file ""
    .text
    .global counting_sort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
counting_sort:
.counting_sort_pre:
    push {lr}
    mov r12, #376
    sub sp, sp, r12
.counting_sort_entry:
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
    add r12, sp, #60
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #52
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #56
    str lr, [r12, #0]
    b .counting_sort_label10+0
.counting_sort_label10:
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#10
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
    bne .counting_sort_label15+0
    b .counting_sort_label20+0
.counting_sort_label15:
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, =#0
    ldr r12, [sp, #84]
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #60
    str lr, [r12, #0]
    b .counting_sort_label10+0
.counting_sort_label20:
    b .counting_sort_label21+0
.counting_sort_label21:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #96]
    ldr lr, [sp, #100]
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
    bne .counting_sort_label27+0
    b .counting_sort_label42+0
.counting_sort_label27:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #132]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #52
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
    ldr lr, [sp, #148]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    ldr r12, [sp, #132]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    add r12, sp, #52
    str lr, [r12, #0]
    b .counting_sort_label21+0
.counting_sort_label42:
    ldr lr, =#1
    add r12, sp, #60
    str lr, [r12, #0]
    b .counting_sort_label43+0
.counting_sort_label43:
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    str r12, [sp, #180]
    ldr r12, [sp, #180]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    cmp r12, #0
    bne .counting_sort_label48+0
    b .counting_sort_label61+0
.counting_sort_label48:
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #192]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #204]
    ldr lr, [sp, #220]
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    ldr r12, [sp, #192]
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, [sp, #232]
    add r12, sp, #60
    str lr, [r12, #0]
    b .counting_sort_label43+0
.counting_sort_label61:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr lr, [sp, #236]
    add r12, sp, #56
    str lr, [r12, #0]
    b .counting_sort_label63+0
.counting_sort_label63:
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    ldr lr, =#0
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
    bne .counting_sort_label68+0
    b .counting_sort_label99+0
.counting_sort_label68:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr r12, [sp, #260]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #256]
    add r12, r12, lr
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr lr, [sp, #272]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #276]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r12, [sp, #284]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #280]
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr lr, [sp, #296]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    ldr r12, [sp, #276]
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #316]
    add r12, r12, lr
    str r12, [sp, #328]
    ldr lr, [sp, #328]
    ldr r12, [lr, #0]
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #336]
    ldr lr, [sp, #336]
    ldr r12, [lr, #0]
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #312]
    add r12, r12, lr
    str r12, [sp, #344]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #348]
    add r12, r12, lr
    str r12, [sp, #360]
    ldr lr, [sp, #360]
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    ldr lr, [sp, #364]
    ldr r12, [sp, #344]
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr r12, [sp, #368]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    add r12, sp, #56
    str lr, [r12, #0]
    b .counting_sort_label63+0
.counting_sort_label99:
    ldr r0, =#0
    mov r12, #376
    add sp, sp, r12
    pop {pc}
.counting_sort_post:
main:
.main_pre:
    push {lr}
    mov r12, #192
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
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #84
    add r12, r12, lr
    str r12, [sp, #128]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r0, [sp, #124]
    ldr r1, [sp, #128]
    ldr r2, [sp, #132]
    mov r12, #0
    sub sp, sp, r12
    bl counting_sort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label17+0
.main_label17:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
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
    bne .main_label23+0
    b .main_label32+0
.main_label23:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #84
    add r12, r12, lr
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    add r12, sp, #160
    str lr, [r12, #0]
    add lr, sp, #160
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r0, [sp, #176]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #160
    str lr, [r12, #0]
    add lr, sp, #160
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr r0, [sp, #180]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
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
    b .main_label17+0
.main_label32:
    ldr r0, =#0
    mov r12, #192
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
