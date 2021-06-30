    .arch armv7-a
    .file ""
    .text
    .global swap
    .global heap_ajust
    .global heap_sort
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
swap:
.swap_pre:
    push {lr}
    mov r12, #76
    sub sp, sp, r12
.swap_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #16]
    add r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #32]
    add r12, r12, lr
    str r12, [sp, #40]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #44]
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    ldr r12, [sp, #40]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #68]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr r0, =#0
    mov r12, #76
    add sp, sp, r12
    pop {pc}
.swap_post:
heap_ajust:
.heap_ajust_pre:
    push {lr}
    mov r12, #216
    sub sp, sp, r12
.heap_ajust_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #20
    str lr, [r12, #0]
    b .heap_ajust_label12+0
.heap_ajust_label12:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #44]
    ldr r12, [sp, #36]
    ldr lr, [sp, #44]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    cmp r12, #0
    bne .heap_ajust_label19+0
    b .heap_ajust_label38+0
.heap_ajust_label19:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r12, [sp, #60]
    ldr lr, [sp, #64]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #76]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #104]
    ldr lr, [sp, #104]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #96]
    add r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    ldr r12, [sp, #92]
    ldr lr, [sp, #112]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #124]
    ldr r12, [sp, #76]
    ldr lr, [sp, #124]
    and r12, r12, lr
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    cmp r12, #0
    bne .heap_ajust_label39+0
    b .heap_ajust_label42+0
.heap_ajust_label38:
    ldr r0, =#0
    mov r12, #216
    add sp, sp, r12
    pop {pc}
.heap_ajust_label39:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #20
    str lr, [r12, #0]
    b .heap_ajust_label42+0
.heap_ajust_label42:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #140]
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #20
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
    ldr r12, [sp, #152]
    ldr lr, [sp, #168]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #180]
    ldr r12, [sp, #180]
    cmp r12, #0
    bne .heap_ajust_label54+0
    b .heap_ajust_label55+0
.heap_ajust_label54:
    ldr r0, =#0
    mov r12, #216
    add sp, sp, r12
    pop {pc}
.heap_ajust_label55:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r0, [sp, #184]
    ldr r1, [sp, #188]
    ldr r2, [sp, #192]
    mov r12, #0
    sub sp, sp, r12
    bl swap
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr r12, [sp, #204]
    ldr lr, =#2
    mul r12, r12, lr
    str r12, [sp, #208]
    ldr r12, [sp, #208]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    add r12, sp, #20
    str lr, [r12, #0]
    b .heap_ajust_label64+0
.heap_ajust_label64:
    b .heap_ajust_label12+0
.heap_ajust_post:
heap_sort:
.heap_sort_pre:
    push {lr}
    mov r12, #156
    sub sp, sp, r12
.heap_sort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r0, [sp, #16]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #24]
    ldr lr, [sp, #24]
    add r12, sp, #8
    str lr, [r12, #0]
    b .heap_sort_label9+0
.heap_sort_label9:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #32]
    ldr r12, [sp, #28]
    ldr lr, [sp, #32]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    cmp r12, #0
    bne .heap_sort_label15+0
    b .heap_sort_label24+0
.heap_sort_label15:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r0, [sp, #56]
    ldr r1, [sp, #60]
    ldr r2, [sp, #64]
    mov r12, #0
    sub sp, sp, r12
    bl heap_ajust
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #68]
    ldr lr, [sp, #68]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #8
    str lr, [r12, #0]
    b .heap_sort_label9+0
.heap_sort_label24:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    add r12, sp, #8
    str lr, [r12, #0]
    b .heap_sort_label27+0
.heap_sort_label27:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .heap_sort_label32+0
    b .heap_sort_label46+0
.heap_sort_label32:
    ldr lr, =#0
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r0, [sp, #108]
    ldr r1, [sp, #112]
    ldr r2, [sp, #116]
    mov r12, #0
    sub sp, sp, r12
    bl swap
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r0, [sp, #132]
    ldr r1, [sp, #136]
    ldr r2, [sp, #140]
    mov r12, #0
    sub sp, sp, r12
    bl heap_ajust
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #12
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #8
    str lr, [r12, #0]
    b .heap_sort_label27+0
.heap_sort_label46:
    ldr r0, =#0
    mov r12, #156
    add sp, sp, r12
    pop {pc}
.heap_sort_post:
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
    bl heap_sort
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
