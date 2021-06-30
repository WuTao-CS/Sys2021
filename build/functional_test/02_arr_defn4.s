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
    mov r12, #168
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #8
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #36]
    ldr lr, =#1
    ldr r12, [sp, #36]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #36]
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, =#2
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#3
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #44]
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#4
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#5
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#6
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#7
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#8
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #64]
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#0
    mov r12, #8
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #104]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #104]
    add r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr lr, =#0
    mov r12, #8
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #116]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr lr, =#0
    mov r12, #8
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #128]
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #112]
    ldr r12, [sp, #132]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #132]
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #124]
    ldr r12, [sp, #136]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #136]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, =#3
    ldr r12, [sp, #140]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #140]
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, =#4
    ldr r12, [sp, #144]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #144]
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, =#5
    ldr r12, [sp, #148]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #148]
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, =#6
    ldr r12, [sp, #152]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #152]
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, =#7
    ldr r12, [sp, #156]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #156]
    add r12, r12, lr
    str r12, [sp, #160]
    ldr lr, =#8
    ldr r12, [sp, #160]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #160]
    add r12, r12, lr
    str r12, [sp, #164]
    ldr r0, =#0
    mov r12, #168
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
