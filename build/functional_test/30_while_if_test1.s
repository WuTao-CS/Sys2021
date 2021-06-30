    .arch armv7-a
    .file ""
    .text
    .global whileIf
    .global main
    .syntax unified
    .arm
.global_vars:
whileIf:
.whileIf_pre:
    push {lr}
    mov r12, #76
    sub sp, sp, r12
.whileIf_entry:
    ldr lr, =#0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    b .whileIf_label2+0
.whileIf_label2:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#100
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .whileIf_label7+0
    b .whileIf_label12+0
.whileIf_label7:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#5
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
    bne .whileIf_label14+0
    b .whileIf_label15+0
.whileIf_label12:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #76
    add sp, sp, r12
    pop {pc}
.whileIf_label14:
    ldr lr, =#25
    add r12, sp, #4
    str lr, [r12, #0]
    b .whileIf_label20+0
.whileIf_label15:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    cmp r12, #0
    bne .whileIf_label23+0
    b .whileIf_label24+0
.whileIf_label20:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #0
    str lr, [r12, #0]
    b .whileIf_label2+0
.whileIf_label23:
    ldr lr, =#42
    add r12, sp, #4
    str lr, [r12, #0]
    b .whileIf_label27+0
.whileIf_label24:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #4
    str lr, [r12, #0]
    b .whileIf_label27+0
.whileIf_label27:
    b .whileIf_label20+0
.whileIf_post:
main:
.main_pre:
    push {lr}
    mov r12, #4
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl whileIf
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr r0, [sp, #0]
    mov r12, #4
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
