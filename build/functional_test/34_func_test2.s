    .arch armv7-a
    .file ""
    .text
    .global func1
    .global func2
    .global func3
    .global func4
    .global main
    .syntax unified
    .arm
.global_vars:
func1:
.func1_pre:
    push {lr}
    mov r12, #8
    sub sp, sp, r12
.func1_entry:
    ldr lr, =#1
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #8
    add sp, sp, r12
    pop {pc}
.func1_post:
func2:
.func2_pre:
    push {lr}
    mov r12, #8
    sub sp, sp, r12
.func2_entry:
    ldr lr, =#2
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #8
    add sp, sp, r12
    pop {pc}
.func2_post:
func3:
.func3_pre:
    push {lr}
    mov r12, #8
    sub sp, sp, r12
.func3_entry:
    ldr lr, =#4
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r0, [sp, #4]
    mov r12, #8
    add sp, sp, r12
    pop {pc}
.func3_post:
func4:
.func4_pre:
    push {lr}
    mov r12, #32
    sub sp, sp, r12
.func4_entry:
    ldr lr, =#8
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr lr, [sp, #8]
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#16
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr r12, [sp, #16]
    ldr lr, [sp, #20]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #32
    add sp, sp, r12
    pop {pc}
.func4_post:
main:
.main_pre:
    push {lr}
    mov r12, #64
    sub sp, sp, r12
.main_entry:
    ldr lr, =#32
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#32
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#32
    add r12, sp, #8
    str lr, [r12, #0]
    mov r12, #0
    sub sp, sp, r12
    bl func1
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    mov r12, #0
    sub sp, sp, r12
    bl func2
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    add r12, r12, lr
    str r12, [sp, #20]
    mov r12, #0
    sub sp, sp, r12
    bl func3
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    add r12, r12, lr
    str r12, [sp, #28]
    mov r12, #0
    sub sp, sp, r12
    bl func4
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #32]
    ldr r12, [sp, #28]
    ldr lr, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #36]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #36]
    ldr lr, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #44]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #44]
    ldr lr, [sp, #48]
    add r12, r12, lr
    str r12, [sp, #52]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, [sp, #52]
    ldr lr, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    mov r12, #64
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
