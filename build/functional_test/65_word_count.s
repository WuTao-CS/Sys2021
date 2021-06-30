    .arch armv7-a
    .file ""
    .text
    .global wc
    .global main
    .syntax unified
    .arm
.global_vars:
wc:
.wc_pre:
    push {lr}
    mov r12, #104
    sub sp, sp, r12
.wc_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #16
    str lr, [r12, #0]
    b .wc_label7+0
.wc_label7:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #20]
    ldr lr, [sp, #24]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    str r12, [sp, #32]
    ldr r12, [sp, #32]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    cmp r12, #0
    bne .wc_label13+0
    b .wc_label21+0
.wc_label13:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #40]
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movne r12, #1
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
    bne .wc_label23+0
    b .wc_label28+0
.wc_label21:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r0, [sp, #68]
    mov r12, #104
    add sp, sp, r12
    pop {pc}
.wc_label23:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    cmp r12, #0
    bne .wc_label32+0
    b .wc_label35+0
.wc_label28:
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .wc_label29+0
.wc_label29:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #12
    str lr, [r12, #0]
    b .wc_label7+0
.wc_label32:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #16
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #8
    str lr, [r12, #0]
    b .wc_label35+0
.wc_label35:
    b .wc_label29+0
.wc_post:
main:
.main_pre:
    push {lr}
    mov r12, #2064
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label3+0
.main_label3:
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2008]
    ldr r12, [sp, #2008]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2012]
    ldr r12, [sp, #2012]
    str r12, [sp, #2016]
    ldr r12, [sp, #2016]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2020]
    ldr r12, [sp, #2020]
    cmp r12, #0
    bne .main_label8+0
    b .main_label15+0
.main_label8:
    mov r12, #0
    sub sp, sp, r12
    bl getch
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #2024]
    ldr lr, [sp, #2024]
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2028]
    ldr lr, [sp, #2028]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #2032]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2036]
    ldr lr, [sp, #2036]
    ldr r12, [sp, #2032]
    str lr, [r12, #0]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2040]
    ldr r12, [sp, #2040]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #2044]
    ldr lr, [sp, #2044]
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label3+0
.main_label15:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #2048]
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2052]
    ldr r0, [sp, #2048]
    ldr r1, [sp, #2052]
    mov r12, #0
    sub sp, sp, r12
    bl wc
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #2056]
    ldr lr, [sp, #2056]
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2060]
    ldr r0, [sp, #2060]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #2064
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
