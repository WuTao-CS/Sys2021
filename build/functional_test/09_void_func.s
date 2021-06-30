    .arch armv7-a
    .file ""
    .text
    .global add
    .global main
    .syntax unified
    .arm
    .global a
    .global b
    .global c
.global_vars:
    .long a
    .long b
    .long c
add:
.add_pre:
    push {lr}
    mov r12, #20
    sub sp, sp, r12
.add_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, [sp, #8]
    ldr lr, [sp, #12]
    add r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    mov r12, #20
    add sp, sp, r12
    pop {pc}
.add_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#2
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #0]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #0]
    ldr r1, [sp, #4]
    mov r12, #0
    sub sp, sp, r12
    bl add
    mov r12, #0
    add sp, sp, r12
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a:
    .long 0
b:
    .long 0
c:
    .long 0
