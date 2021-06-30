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
    mov r12, #140
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
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #36]
    ldr lr, [sp, #40]
    sub r12, r12, lr
    str r12, [sp, #44]
    ldr r12, [sp, #32]
    ldr lr, [sp, #44]
    add r12, r12, lr
    str r12, [sp, #48]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #56]
    ldr r12, =#0
    ldr lr, [sp, #56]
    sub r12, r12, lr
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #64]
    ldr r12, [sp, #48]
    ldr lr, [sp, #64]
    sub r12, r12, lr
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r0, [sp, #72]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r0, [sp, #76]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#67
    add r12, r12, lr
    str r12, [sp, #84]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r12, [sp, #88]
    ldr lr, [sp, #92]
    sub r12, r12, lr
    str r12, [sp, #96]
    ldr r12, =#0
    ldr lr, [sp, #96]
    sub r12, r12, lr
    str r12, [sp, #100]
    ldr r12, [sp, #84]
    ldr lr, [sp, #100]
    add r12, r12, lr
    str r12, [sp, #104]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#2
    add r12, r12, lr
    str r12, [sp, #112]
    ldr r0, [sp, #112]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #116]
    ldr r12, =#0
    ldr lr, [sp, #116]
    sub r12, r12, lr
    str r12, [sp, #120]
    ldr r12, [sp, #104]
    ldr lr, [sp, #120]
    sub r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r0, [sp, #136]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #140
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
