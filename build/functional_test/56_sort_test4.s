    .arch armv7-a
    .file ""
    .text
    .global select_sort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
select_sort:
.select_sort_pre:
    push {lr}
    mov r12, #224
    sub sp, sp, r12
.select_sort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .select_sort_label7+0
.select_sort_label7:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #20]
    ldr lr, [sp, #28]
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
    bne .select_sort_label14+0
    b .select_sort_label18+0
.select_sort_label14:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    add r12, sp, #12
    str lr, [r12, #0]
    b .select_sort_label19+0
.select_sort_label18:
    ldr r0, =#0
    mov r12, #224
    add sp, sp, r12
    pop {pc}
.select_sort_label19:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #64]
    ldr r12, [sp, #64]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    cmp r12, #0
    bne .select_sort_label25+0
    b .select_sort_label37+0
.select_sort_label25:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #92]
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #88]
    ldr lr, [sp, #104]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    cmp r12, #0
    bne .select_sort_label43+0
    b .select_sort_label45+0
.select_sort_label37:
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #120]
    ldr lr, [sp, #124]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    cmp r12, #0
    bne .select_sort_label48+0
    b .select_sort_label65+0
.select_sort_label43:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    add r12, sp, #16
    str lr, [r12, #0]
    b .select_sort_label45+0
.select_sort_label45:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr r12, [sp, #144]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    add r12, sp, #12
    str lr, [r12, #0]
    b .select_sort_label19+0
.select_sort_label48:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr lr, [sp, #160]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #156]
    add r12, r12, lr
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    add r12, sp, #152
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #172]
    add r12, r12, lr
    str r12, [sp, #180]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #184]
    add r12, r12, lr
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    ldr r12, [sp, #180]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #200]
    add r12, r12, lr
    str r12, [sp, #208]
    add lr, sp, #152
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [sp, #208]
    str lr, [r12, #0]
    b .select_sort_label65+0
.select_sort_label65:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #8
    str lr, [r12, #0]
    b .select_sort_label7+0
.select_sort_post:
main:
.main_pre:
    push {lr}
    mov r12, #148
    sub sp, sp, r12
.main_entry:
    ldr lr, =#10
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #40]
    ldr lr, =#4
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #44]
    ldr lr, =#3
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #48]
    ldr lr, =#9
    ldr r12, [sp, #48]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#2
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#0
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, =#1
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, =#6
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#5
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#7
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, =#8
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #80
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #84]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r0, [sp, #84]
    ldr r1, [sp, #88]
    mov r12, #0
    sub sp, sp, r12
    bl select_sort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label15+0
.main_label15:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #96]
    ldr lr, [sp, #100]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    cmp r12, #0
    bne .main_label21+0
    b .main_label30+0
.main_label21:
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #116
    str lr, [r12, #0]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r0, [sp, #132]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #116
    str lr, [r12, #0]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr r0, [sp, #136]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #80
    str lr, [r12, #0]
    b .main_label15+0
.main_label30:
    ldr r0, =#0
    mov r12, #148
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
