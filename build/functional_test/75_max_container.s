    .arch armv7-a
    .file ""
    .text
    .global maxArea
    .global main
    .syntax unified
    .arm
.global_vars:
maxArea:
.maxArea_pre:
    push {lr}
    mov r12, #252
    sub sp, sp, r12
.maxArea_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #12
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #24
    str lr, [r12, #0]
    b .maxArea_label10+0
.maxArea_label10:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #32]
    ldr lr, [sp, #36]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    cmp r12, #0
    bne .maxArea_label16+0
    b .maxArea_label29+0
.maxArea_label16:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #72]
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #68]
    ldr lr, [sp, #84]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    cmp r12, #0
    bne .maxArea_label31+0
    b .maxArea_label40+0
.maxArea_label29:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #100]
    mov r12, #252
    add sp, sp, r12
    pop {pc}
.maxArea_label31:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #104]
    ldr lr, [sp, #108]
    sub r12, r12, lr
    str r12, [sp, #112]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #8
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
    ldr r12, [sp, #112]
    ldr lr, [sp, #128]
    mul r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    add r12, sp, #52
    str lr, [r12, #0]
    b .maxArea_label49+0
.maxArea_label40:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #136]
    ldr lr, [sp, #140]
    sub r12, r12, lr
    str r12, [sp, #144]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #148]
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #144]
    ldr lr, [sp, #160]
    mul r12, r12, lr
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    add r12, sp, #52
    str lr, [r12, #0]
    b .maxArea_label49+0
.maxArea_label49:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr r12, [sp, #168]
    ldr lr, [sp, #172]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .maxArea_label55+0
    b .maxArea_label57+0
.maxArea_label55:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    add r12, sp, #24
    str lr, [r12, #0]
    b .maxArea_label57+0
.maxArea_label57:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #192]
    add r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #208]
    add r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #204]
    ldr lr, [sp, #220]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #224]
    ldr r12, [sp, #224]
    str r12, [sp, #228]
    ldr r12, [sp, #228]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #232]
    ldr r12, [sp, #232]
    cmp r12, #0
    bne .maxArea_label69+0
    b .maxArea_label72+0
.maxArea_label69:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r12, [sp, #236]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #240]
    ldr lr, [sp, #240]
    add r12, sp, #12
    str lr, [r12, #0]
    b .maxArea_label75+0
.maxArea_label72:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r12, [sp, #244]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    add r12, sp, #8
    str lr, [r12, #0]
    b .maxArea_label75+0
.maxArea_label75:
    b .maxArea_label10+0
.maxArea_post:
main:
.main_pre:
    push {lr}
    mov r12, #100
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#3
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#3
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#9
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#0
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#0
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#1
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#1
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#5
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, =#7
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, =#8
    ldr r12, [sp, #80]
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #84]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r0, [sp, #84]
    ldr r1, [sp, #88]
    mov r12, #0
    sub sp, sp, r12
    bl maxArea
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #96]
    mov r12, #100
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
