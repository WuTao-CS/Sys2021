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
    mov r12, #184
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#6
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#4
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#5
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    add r12, r12, lr
    str r12, [sp, #28]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r12, [sp, #28]
    ldr lr, [sp, #32]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #56]
    ldr r12, [sp, #48]
    ldr lr, [sp, #56]
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
    ldr r12, [sp, #44]
    ldr lr, [sp, #68]
    and r12, r12, lr
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    cmp r12, #0
    bne .main_label19+0
    b .main_label27+0
.main_label19:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r0, [sp, #80]
    ldr r1, [sp, #84]
    bl __aeabi_idiv
    str r0, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #92]
    ldr r12, [sp, #76]
    ldr lr, [sp, #92]
    add r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #100]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label27+0
.main_label27:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #116]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #120]
    ldr lr, [sp, #124]
    sub r12, r12, lr
    str r12, [sp, #128]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #128]
    ldr lr, [sp, #132]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #144]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #156]
    ldr r12, [sp, #148]
    ldr lr, [sp, #156]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #168]
    ldr r12, [sp, #144]
    ldr lr, [sp, #168]
    and r12, r12, lr
    str r12, [sp, #172]
    ldr r12, [sp, #116]
    ldr lr, [sp, #172]
    orr r12, r12, lr
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    cmp r12, #0
    bne .main_label47+0
    b .main_label49+0
.main_label47:
    ldr lr, =#1
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr r0, [sp, #180]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label49+0
.main_label49:
    ldr r0, =#0
    mov r12, #184
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
