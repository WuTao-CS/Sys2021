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
    mov r12, #2128
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r11, #2008
    add r12, sp, r11
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label4+0
.main_label4:
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2012]
    ldr r12, [sp, #2012]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2016]
    ldr r12, [sp, #2016]
    str r12, [sp, #2020]
    ldr r12, [sp, #2020]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2024]
    ldr r12, [sp, #2024]
    cmp r12, #0
    bne .main_label9+0
    b .main_label30+0
.main_label9:
    mov r12, #0
    sub sp, sp, r12
    bl getch
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #2028]
    ldr lr, [sp, #2028]
    mov r11, #2000
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2032]
    ldr r12, [sp, #2032]
    ldr lr, =#40
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #2036]
    ldr r12, [sp, #2036]
    str r12, [sp, #2040]
    ldr r12, [sp, #2040]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2044]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2048]
    ldr r12, [sp, #2048]
    ldr lr, =#91
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #2052]
    ldr r12, [sp, #2052]
    str r12, [sp, #2056]
    ldr r12, [sp, #2056]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2060]
    ldr r12, [sp, #2044]
    ldr lr, [sp, #2060]
    and r12, r12, lr
    str r12, [sp, #2064]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2068]
    ldr r12, [sp, #2068]
    ldr lr, =#96
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #2072]
    ldr r12, [sp, #2072]
    str r12, [sp, #2076]
    ldr r12, [sp, #2076]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2080]
    mov r11, #2000
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2084]
    ldr r12, [sp, #2084]
    ldr lr, =#123
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #2088]
    ldr r12, [sp, #2088]
    str r12, [sp, #2092]
    ldr r12, [sp, #2092]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #2096]
    ldr r12, [sp, #2080]
    ldr lr, [sp, #2096]
    and r12, r12, lr
    str r12, [sp, #2100]
    ldr r12, [sp, #2064]
    ldr lr, [sp, #2100]
    orr r12, r12, lr
    str r12, [sp, #2104]
    ldr r12, [sp, #2104]
    cmp r12, #0
    bne .main_label32+0
    b .main_label35+0
.main_label30:
    mov r11, #2008
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2108]
    ldr r0, [sp, #2108]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #2128
    add sp, sp, r12
    pop {pc}
.main_label32:
    mov r11, #2008
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2112]
    ldr r12, [sp, #2112]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #2116]
    ldr lr, [sp, #2116]
    mov r11, #2008
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label35+0
.main_label35:
    mov r11, #2004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #2120]
    ldr r12, [sp, #2120]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #2124]
    ldr lr, [sp, #2124]
    mov r11, #2004
    add r12, sp, r11
    str lr, [r12, #0]
    b .main_label4+0
.main_post:
    .data
