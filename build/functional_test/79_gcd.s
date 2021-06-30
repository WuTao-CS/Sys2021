    .arch armv7-a
    .file ""
    .text
    .global gcd
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
gcd:
.gcd_pre:
    push {lr}
    mov r12, #100
    sub sp, sp, r12
.gcd_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #16]
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
    bne .gcd_label11+0
    b .gcd_label15+0
.gcd_label11:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr lr, [sp, #40]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #4
    str lr, [r12, #0]
    b .gcd_label15+0
.gcd_label15:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r0, [sp, #48]
    ldr r1, [sp, #52]
    bl __aeabi_idivmod
    str r1, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #12
    str lr, [r12, #0]
    b .gcd_label19+0
.gcd_label19:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    cmp r12, #0
    bne .gcd_label24+0
    b .gcd_label30+0
.gcd_label24:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r0, [sp, #84]
    ldr r1, [sp, #88]
    bl __aeabi_idivmod
    str r1, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #12
    str lr, [r12, #0]
    b .gcd_label19+0
.gcd_label30:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #96]
    mov r12, #100
    add sp, sp, r12
    pop {pc}
.gcd_post:
main:
.main_pre:
    push {lr}
    mov r12, #28
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r0, [sp, #16]
    ldr r1, [sp, #20]
    mov r12, #0
    sub sp, sp, r12
    bl gcd
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #24]
    ldr r0, [sp, #24]
    mov r12, #28
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
