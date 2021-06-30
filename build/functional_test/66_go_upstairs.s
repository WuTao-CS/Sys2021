    .arch armv7-a
    .file ""
    .text
    .global climbStairs
    .global main
    .syntax unified
    .arm
.global_vars:
climbStairs:
.climbStairs_pre:
    push {lr}
    mov r12, #168
    sub sp, sp, r12
.climbStairs_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#4
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .climbStairs_label6+0
    b .climbStairs_label8+0
.climbStairs_label6:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r0, [sp, #20]
    mov r12, #168
    add sp, sp, r12
    pop {pc}
.climbStairs_label8:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#0
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#1
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#2
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#3
    add r12, sp, #76
    str lr, [r12, #0]
    b .climbStairs_label14+0
.climbStairs_label14:
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #88]
    ldr r12, [sp, #80]
    ldr lr, [sp, #88]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    cmp r12, #0
    bne .climbStairs_label21+0
    b .climbStairs_label35+0
.climbStairs_label21:
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #108]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #124]
    ldr lr, [sp, #140]
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    ldr r12, [sp, #108]
    str lr, [r12, #0]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #76
    str lr, [r12, #0]
    b .climbStairs_label14+0
.climbStairs_label35:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr r0, [sp, #164]
    mov r12, #168
    add sp, sp, r12
    pop {pc}
.climbStairs_post:
main:
.main_pre:
    push {lr}
    mov r12, #20
    sub sp, sp, r12
.main_entry:
    ldr lr, =#5
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl climbStairs
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
