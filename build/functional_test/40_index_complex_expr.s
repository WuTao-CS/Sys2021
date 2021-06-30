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
    mov r12, #196
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
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #12
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, =#1
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#2
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#3
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#4
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#5
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    ldr lr, =#1
    mul r12, r12, lr
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#4
    add r12, r12, lr
    str r12, [sp, #76]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #80]
    ldr lr, [sp, #84]
    sub r12, r12, lr
    str r12, [sp, #88]
    ldr r12, [sp, #76]
    ldr lr, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #92]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#3
    add r12, r12, lr
    str r12, [sp, #100]
    ldr r12, =#0
    ldr lr, [sp, #100]
    sub r12, r12, lr
    str r12, [sp, #104]
    ldr r0, [sp, #104]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #108]
    ldr r12, [sp, #92]
    ldr lr, [sp, #108]
    sub r12, r12, lr
    str r12, [sp, #112]
    ldr r0, [sp, #112]
    ldr r1, =#5
    bl __aeabi_idivmod
    str r1, [sp, #116]
    ldr lr, [sp, #116]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r0, [sp, #128]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r0, [sp, #132]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #136]
    ldr r12, [sp, #136]
    ldr lr, =#67
    add r12, r12, lr
    str r12, [sp, #140]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r12, [sp, #140]
    ldr lr, [sp, #144]
    add r12, r12, lr
    str r12, [sp, #148]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #148]
    ldr lr, [sp, #152]
    sub r12, r12, lr
    str r12, [sp, #156]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#2
    add r12, r12, lr
    str r12, [sp, #164]
    ldr r0, [sp, #164]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #168]
    ldr r12, =#0
    ldr lr, [sp, #168]
    sub r12, r12, lr
    str r12, [sp, #172]
    ldr r12, [sp, #156]
    ldr lr, [sp, #172]
    sub r12, r12, lr
    str r12, [sp, #176]
    ldr r0, [sp, #176]
    ldr r1, =#5
    bl __aeabi_idivmod
    str r1, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #16
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r0, [sp, #192]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #196
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
