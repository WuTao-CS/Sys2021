    .arch armv7-a
    .file ""
    .text
    .global insert
    .global main
    .syntax unified
    .arm
    .global N
.global_vars:
    .long N
insert:
.insert_pre:
    push {lr}
    mov r12, #160
    sub sp, sp, r12
.insert_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .insert_label6+0
.insert_label6:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #20]
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #16]
    ldr lr, [sp, #32]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #48]
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
    ldr r12, [sp, #44]
    ldr lr, [sp, #64]
    and r12, r12, lr
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    cmp r12, #0
    bne .insert_label21+0
    b .insert_label24+0
.insert_label21:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #8
    str lr, [r12, #0]
    b .insert_label6+0
.insert_label24:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #12
    str lr, [r12, #0]
    b .insert_label26+0
.insert_label26:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #84]
    ldr lr, [sp, #88]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    cmp r12, #0
    bne .insert_label32+0
    b .insert_label47+0
.insert_label32:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #104]
    add r12, r12, lr
    str r12, [sp, #112]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    ldr r12, [sp, #112]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #136]
    add r12, r12, lr
    str r12, [sp, #144]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    ldr r12, [sp, #144]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    add r12, sp, #12
    str lr, [r12, #0]
    b .insert_label26+0
.insert_label47:
    ldr r0, =#0
    mov r12, #160
    add sp, sp, r12
    pop {pc}
.insert_post:
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
    str r12, [sp, #44]
    ldr lr, =#1
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#3
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#4
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#7
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#8
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#11
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#13
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#18
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, =#56
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, =#78
    ldr r12, [sp, #80]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #88
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #84
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #96]
    ldr r1, [sp, #100]
    mov r12, #0
    sub sp, sp, r12
    bl insert
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #104]
    ldr lr, [sp, #104]
    add r12, sp, #84
    str lr, [r12, #0]
    b .main_label17+0
.main_label17:
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #108]
    ldr lr, [sp, #112]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    cmp r12, #0
    bne .main_label23+0
    b .main_label31+0
.main_label23:
    add lr, sp, #88
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
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r0, [sp, #140]
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
    str r12, [sp, #144]
    ldr r0, [sp, #144]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #88
    str lr, [r12, #0]
    b .main_label17+0
.main_label31:
    ldr r0, =#0
    mov r12, #156
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
N:
    .long 0
