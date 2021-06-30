    .arch armv7-a
    .file ""
    .text
    .global enc
    .global dec
    .global main
    .syntax unified
    .arm
.global_vars:
enc:
.enc_pre:
    push {lr}
    mov r12, #40
    sub sp, sp, r12
.enc_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#25
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    cmp r12, #0
    bne .enc_label6+0
    b .enc_label9+0
.enc_label6:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#60
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #0
    str lr, [r12, #0]
    b .enc_label12+0
.enc_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#15
    sub r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #0
    str lr, [r12, #0]
    b .enc_label12+0
.enc_label12:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #40
    add sp, sp, r12
    pop {pc}
.enc_post:
dec:
.dec_pre:
    push {lr}
    mov r12, #40
    sub sp, sp, r12
.dec_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#85
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    cmp r12, #0
    bne .dec_label6+0
    b .dec_label9+0
.dec_label6:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#59
    sub r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #0
    str lr, [r12, #0]
    b .dec_label12+0
.dec_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#14
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #0
    str lr, [r12, #0]
    b .dec_label12+0
.dec_label12:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #40
    add sp, sp, r12
    pop {pc}
.dec_post:
main:
.main_pre:
    push {lr}
    mov r12, #32
    sub sp, sp, r12
.main_entry:
    ldr lr, =#400
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl enc
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #0
    sub sp, sp, r12
    bl dec
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r0, [sp, #24]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #32
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
