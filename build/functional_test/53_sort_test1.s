    .arch armv7-a
    .file ""
    .text
    .global bubblesort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
bubblesort:
.bubblesort_pre:
    push {lr}
    mov r12, #204
    sub sp, sp, r12
.bubblesort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    b .bubblesort_label4+0
.bubblesort_label4:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr r12, [sp, #12]
    ldr lr, [sp, #20]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    cmp r12, #0
    bne .bubblesort_label11+0
    b .bubblesort_label12+0
.bubblesort_label11:
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .bubblesort_label13+0
.bubblesort_label12:
    ldr r0, =#0
    mov r12, #204
    add sp, sp, r12
    pop {pc}
.bubblesort_label13:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #40]
    ldr lr, [sp, #44]
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr r12, [sp, #36]
    ldr lr, [sp, #52]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    cmp r12, #0
    bne .bubblesort_label22+0
    b .bubblesort_label35+0
.bubblesort_label22:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #80]
    ldr lr, [sp, #100]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .bubblesort_label38+0
    b .bubblesort_label57+0
.bubblesort_label35:
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
    b .bubblesort_label4+0
.bubblesort_label38:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #128]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #148]
    add r12, r12, lr
    str r12, [sp, #160]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #164]
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    ldr r12, [sp, #160]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #180]
    add r12, r12, lr
    str r12, [sp, #188]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    ldr r12, [sp, #188]
    str lr, [r12, #0]
    b .bubblesort_label57+0
.bubblesort_label57:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr r12, [sp, #196]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    add r12, sp, #8
    str lr, [r12, #0]
    b .bubblesort_label13+0
.bubblesort_post:
main:
.main_pre:
    push {lr}
    mov r12, #144
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
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #84]
    ldr r0, [sp, #84]
    mov r12, #0
    sub sp, sp, r12
    bl bubblesort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label14+0
.main_label14:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #92]
    ldr lr, [sp, #96]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    cmp r12, #0
    bne .main_label20+0
    b .main_label29+0
.main_label20:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    add r12, sp, #112
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r0, [sp, #128]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #112
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r0, [sp, #132]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label14+0
.main_label29:
    ldr r0, =#0
    mov r12, #144
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
