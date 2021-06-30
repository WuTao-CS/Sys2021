    .arch armv7-a
    .file ""
    .text
    .global defn
    .global main
    .syntax unified
    .arm
.global_vars:
defn:
.defn_pre:
    push {lr}
    mov r12, #0
    sub sp, sp, r12
.defn_entry:
    ldr r0, =#4
    mov r12, #0
    add sp, sp, r12
    pop {pc}
.defn_post:
main:
.main_pre:
    push {lr}
    mov r12, #12
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl defn
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #4]
    ldr lr, [sp, #4]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #12
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
