    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
.global_vars:
main:
.main_pre:
    push {lr}
    mov r12, #192
    sub sp, sp, r12
.main_entry:
    ldr lr, =#5
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#5
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #8
    str lr, [r12, #0]
    ldr r12, =#0
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #12
    str lr, [r12, #0]
    ldr lr, =#2
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#1
    mul r12, r12, lr
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #48]
    ldr lr, [sp, #52]
    sub r12, r12, lr
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #68]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #92]
    ldr r12, [sp, #68]
    ldr lr, [sp, #92]
    and r12, r12, lr
    str r12, [sp, #96]
    ldr r12, [sp, #44]
    ldr lr, [sp, #96]
    orr r12, r12, lr
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    cmp r12, #0
    bne .main_label26+0
    b .main_label28+0
.main_label26:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r0, [sp, #104]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label28+0
.main_label28:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r0, [sp, #108]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#67
    add r12, r12, lr
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#0
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
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r12, [sp, #132]
    ldr lr, [sp, #136]
    sub r12, r12, lr
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #144]
    ldr r12, [sp, #144]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #152]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#2
    add r12, r12, lr
    str r12, [sp, #160]
    ldr r0, [sp, #160]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #176]
    ldr r12, [sp, #152]
    ldr lr, [sp, #176]
    and r12, r12, lr
    str r12, [sp, #180]
    ldr r12, [sp, #128]
    ldr lr, [sp, #180]
    orr r12, r12, lr
    str r12, [sp, #184]
    ldr r12, [sp, #184]
    cmp r12, #0
    bne .main_label49+0
    b .main_label51+0
.main_label49:
    ldr lr, =#4
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr r0, [sp, #188]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label51+0
.main_label51:
    ldr r0, =#0
    mov r12, #192
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
