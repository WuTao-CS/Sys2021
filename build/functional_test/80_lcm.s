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
    mov r12, #132
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
    ldr lr, [sp, #16]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #4
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
    bne .gcd_label15+0
    b .gcd_label19+0
.gcd_label15:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    add r12, sp, #4
    str lr, [r12, #0]
    b .gcd_label19+0
.gcd_label19:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #64]
    ldr r1, [sp, #68]
    bl __aeabi_idivmod
    str r1, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #28
    str lr, [r12, #0]
    b .gcd_label23+0
.gcd_label23:
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    cmp r12, #0
    bne .gcd_label28+0
    b .gcd_label34+0
.gcd_label28:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r0, [sp, #100]
    ldr r1, [sp, #104]
    bl __aeabi_idivmod
    str r1, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #28
    str lr, [r12, #0]
    b .gcd_label23+0
.gcd_label34:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #112]
    ldr lr, [sp, #116]
    mul r12, r12, lr
    str r12, [sp, #120]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r0, [sp, #120]
    ldr r1, [sp, #124]
    bl __aeabi_idiv
    str r0, [sp, #128]
    ldr r0, [sp, #128]
    mov r12, #132
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
