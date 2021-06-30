    .arch armv7-a
    .file ""
    .text
    .global maxSubArray
    .global main
    .syntax unified
    .arm
.global_vars:
maxSubArray:
.maxSubArray_pre:
    push {lr}
    mov r12, #176
    sub sp, sp, r12
.maxSubArray_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#0
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
    ldr r12, [sp, #20]
    cmp r12, #0
    bne .maxSubArray_label8+0
    b .maxSubArray_label9+0
.maxSubArray_label8:
    ldr r0, =#0
    mov r12, #176
    add sp, sp, r12
    pop {pc}
.maxSubArray_label9:
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
    ldr r12, [sp, #36]
    cmp r12, #0
    bne .maxSubArray_label14+0
    b .maxSubArray_label18+0
.maxSubArray_label14:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r0, [sp, #48]
    mov r12, #176
    add sp, sp, r12
    pop {pc}
.maxSubArray_label18:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #68
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #76
    str lr, [r12, #0]
    b .maxSubArray_label26+0
.maxSubArray_label26:
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #80]
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
    bne .maxSubArray_label32+0
    b .maxSubArray_label37+0
.maxSubArray_label32:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#0
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
    bne .maxSubArray_label39+0
    b .maxSubArray_label40+0
.maxSubArray_label37:
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r0, [sp, #116]
    mov r12, #176
    add sp, sp, r12
    pop {pc}
.maxSubArray_label39:
    ldr lr, =#0
    add r12, sp, #52
    str lr, [r12, #0]
    b .maxSubArray_label40+0
.maxSubArray_label40:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #124]
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r12, [sp, #120]
    ldr lr, [sp, #136]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #144]
    ldr lr, [sp, #148]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    cmp r12, #0
    bne .maxSubArray_label52+0
    b .maxSubArray_label54+0
.maxSubArray_label52:
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    add r12, sp, #68
    str lr, [r12, #0]
    b .maxSubArray_label54+0
.maxSubArray_label54:
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    add r12, sp, #76
    str lr, [r12, #0]
    b .maxSubArray_label26+0
.maxSubArray_post:
main:
.main_pre:
    push {lr}
    mov r12, #112
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr r12, =#0
    ldr lr, =#4
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#3
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#9
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #60]
    ldr r12, =#0
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#0
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#1
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #76]
    ldr r12, =#0
    ldr lr, =#6
    sub r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, =#5
    ldr r12, [sp, #84]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, =#7
    ldr r12, [sp, #88]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, =#8
    ldr r12, [sp, #92]
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #96]
    ldr r1, [sp, #100]
    mov r12, #0
    sub sp, sp, r12
    bl maxSubArray
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #104]
    ldr lr, [sp, #104]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r0, [sp, #108]
    mov r12, #112
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
