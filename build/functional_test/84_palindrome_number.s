    .arch armv7-a
    .file ""
    .text
    .global palindrome
    .global main
    .syntax unified
    .arm
.global_vars:
palindrome:
.palindrome_pre:
    push {lr}
    mov r12, #140
    sub sp, sp, r12
.palindrome_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #20
    str lr, [r12, #0]
    b .palindrome_label5+0
.palindrome_label5:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#4
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    cmp r12, #0
    bne .palindrome_label10+0
    b .palindrome_label19+0
.palindrome_label10:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #48]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r0, [sp, #52]
    ldr r1, =#10
    bl __aeabi_idivmod
    str r1, [sp, #56]
    ldr lr, [sp, #56]
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r0, [sp, #60]
    ldr r1, =#10
    bl __aeabi_idiv
    str r0, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    add r12, sp, #20
    str lr, [r12, #0]
    b .palindrome_label5+0
.palindrome_label19:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #80]
    ldr lr, [sp, #88]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #92]
    ldr r12, [sp, #92]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #100]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #108]
    ldr lr, [sp, #116]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #128]
    ldr r12, [sp, #100]
    ldr lr, [sp, #128]
    and r12, r12, lr
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    cmp r12, #0
    bne .palindrome_label35+0
    b .palindrome_label36+0
.palindrome_label35:
    ldr lr, =#1
    add r12, sp, #24
    str lr, [r12, #0]
    b .palindrome_label37+0
.palindrome_label36:
    ldr lr, =#0
    add r12, sp, #24
    str lr, [r12, #0]
    b .palindrome_label37+0
.palindrome_label37:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r0, [sp, #136]
    mov r12, #140
    add sp, sp, r12
    pop {pc}
.palindrome_post:
main:
.main_pre:
    push {lr}
    mov r12, #44
    sub sp, sp, r12
.main_entry:
    ldr lr, =#1221
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    mov r12, #0
    sub sp, sp, r12
    bl palindrome
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #12]
    ldr lr, [sp, #12]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    cmp r12, #0
    bne .main_label8+0
    b .main_label10+0
.main_label8:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    ldr r0, [sp, #32]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label12+0
.main_label10:
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    b .main_label12+0
.main_label12:
    ldr lr, =#10
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r0, [sp, #40]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #44
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
