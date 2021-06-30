    .arch armv7-a
    .file ""
    .text
    .global removeElement
    .global main
    .syntax unified
    .arm
.global_vars:
removeElement:
.removeElement_pre:
    push {lr}
    mov r12, #120
    sub sp, sp, r12
.removeElement_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .removeElement_label7+0
.removeElement_label7:
    add lr, sp, #12
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
    bne .removeElement_label13+0
    b .removeElement_label22+0
.removeElement_label13:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr lr, [sp, #40]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #36]
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #48]
    ldr lr, [sp, #52]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    cmp r12, #0
    bne .removeElement_label24+0
    b .removeElement_label35+0
.removeElement_label22:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #120
    add sp, sp, r12
    pop {pc}
.removeElement_label24:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #72]
    add r12, r12, lr
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [sp, #80]
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #4
    str lr, [r12, #0]
    b .removeElement_label38+0
.removeElement_label35:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    add r12, sp, #12
    str lr, [r12, #0]
    b .removeElement_label38+0
.removeElement_label38:
    b .removeElement_label7+0
.removeElement_post:
main:
.main_pre:
    push {lr}
    mov r12, #108
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#3
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#3
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#9
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#0
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#0
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#1
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#1
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#5
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, =#7
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, =#8
    ldr r12, [sp, #80]
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#3
    add r12, sp, #84
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #88]
    ldr r1, [sp, #92]
    ldr r2, [sp, #96]
    mov r12, #0
    sub sp, sp, r12
    bl removeElement
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r0, [sp, #104]
    mov r12, #108
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
