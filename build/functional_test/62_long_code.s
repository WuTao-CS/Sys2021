    .arch armv7-a
    .file ""
    .text
    .global bubblesort
    .global insertsort
    .global QuickSort
    .global getMid
    .global getMost
    .global revert
    .global arrCopy
    .global calSum
    .global avgPooling
    .global main
    .syntax unified
    .arm
    .global n
.global_vars:
    .long n
bubblesort:
.bubblesort_pre:
    push {lr}
    mov r12, #204
    sub sp, sp, r12
.bubblesort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #4
    str lr, [r12, #0]
    b .bubblesort_label4+0
.bubblesort_label4:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #20]
    ldr r12, [sp, #12]
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
    bne .bubblesort_label11+0
    b .bubblesort_label12+0
.bubblesort_label11:
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .bubblesort_label13+0
.bubblesort_label12:
    ldr r0, =#0
    mov r12, #204
    add sp, sp, r12
    pop {pc}
.bubblesort_label13:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #40]
    ldr lr, [sp, #44]
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #52]
    ldr r12, [sp, #36]
    ldr lr, [sp, #52]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .bubblesort_label22+0
    b .bubblesort_label35+0
.bubblesort_label22:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    add r12, r12, lr
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
    ldr r12, [sp, #80]
    ldr lr, [sp, #100]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
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
    bne .bubblesort_label38+0
    b .bubblesort_label57+0
.bubblesort_label35:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #4
    str lr, [r12, #0]
    b .bubblesort_label4+0
.bubblesort_label38:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #128]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #148]
    add r12, r12, lr
    str r12, [sp, #160]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #164]
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    ldr r12, [sp, #160]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #180]
    add r12, r12, lr
    str r12, [sp, #188]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    ldr r12, [sp, #188]
    str lr, [r12, #0]
    b .bubblesort_label57+0
.bubblesort_label57:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr r12, [sp, #196]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    add r12, sp, #8
    str lr, [r12, #0]
    b .bubblesort_label13+0
.bubblesort_post:
insertsort:
.insertsort_pre:
    push {lr}
    mov r12, #184
    sub sp, sp, r12
.insertsort_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #4
    str lr, [r12, #0]
    b .insertsort_label3+0
.insertsort_label3:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    ldr r12, [sp, #8]
    ldr lr, [sp, #12]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    cmp r12, #0
    bne .insertsort_label9+0
    b .insertsort_label18+0
.insertsort_label9:
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
    ldr lr, [sp, #40]
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #28
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #48
    str lr, [r12, #0]
    b .insertsort_label19+0
.insertsort_label18:
    ldr r0, =#0
    mov r12, #184
    add sp, sp, r12
    pop {pc}
.insertsort_label19:
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #64]
    ldr r12, [sp, #60]
    ldr lr, [sp, #64]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #76]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #80]
    ldr lr, [sp, #96]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #100]
    ldr r12, [sp, #100]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #108]
    ldr r12, [sp, #76]
    ldr lr, [sp, #108]
    and r12, r12, lr
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    cmp r12, #0
    bne .insertsort_label34+0
    b .insertsort_label45+0
.insertsort_label34:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #128]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #132]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    ldr r12, [sp, #128]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #148]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #48
    str lr, [r12, #0]
    b .insertsort_label19+0
.insertsort_label45:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #156]
    add r12, r12, lr
    str r12, [sp, #168]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [sp, #168]
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    add r12, sp, #4
    str lr, [r12, #0]
    b .insertsort_label3+0
.insertsort_post:
QuickSort:
.QuickSort_pre:
    push {lr}
    mov r12, #400
    sub sp, sp, r12
.QuickSort_entry:
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
    str r12, [sp, #12]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .QuickSort_label11+0
    b .QuickSort_label21+0
.QuickSort_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr lr, [sp, #36]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr lr, [sp, #44]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #48
    str lr, [r12, #0]
    b .QuickSort_label22+0
.QuickSort_label21:
    ldr r0, =#0
    mov r12, #400
    add sp, sp, r12
    pop {pc}
.QuickSort_label22:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #68]
    ldr lr, [sp, #72]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .QuickSort_label28+0
    b .QuickSort_label29+0
.QuickSort_label28:
    b .QuickSort_label47+0
.QuickSort_label29:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [sp, #96]
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r0, [sp, #116]
    ldr r1, [sp, #120]
    ldr r2, [sp, #124]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #128]
    ldr lr, [sp, #128]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r0, [sp, #140]
    ldr r1, [sp, #144]
    ldr r2, [sp, #148]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #152]
    ldr lr, [sp, #152]
    add r12, sp, #104
    str lr, [r12, #0]
    b .QuickSort_label21+0
.QuickSort_label47:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, [sp, #156]
    ldr lr, [sp, #160]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #172]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #176]
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #196]
    ldr r12, [sp, #188]
    ldr lr, [sp, #196]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    str r12, [sp, #204]
    ldr r12, [sp, #204]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #208]
    ldr r12, [sp, #172]
    ldr lr, [sp, #208]
    and r12, r12, lr
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    cmp r12, #0
    bne .QuickSort_label63+0
    b .QuickSort_label66+0
.QuickSort_label63:
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #40
    str lr, [r12, #0]
    b .QuickSort_label47+0
.QuickSort_label66:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #224]
    ldr lr, [sp, #228]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #232]
    ldr r12, [sp, #232]
    str r12, [sp, #236]
    ldr r12, [sp, #236]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    cmp r12, #0
    bne .QuickSort_label72+0
    b .QuickSort_label82+0
.QuickSort_label72:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #244]
    add r12, r12, lr
    str r12, [sp, #252]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #256]
    add r12, r12, lr
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    ldr r12, [sp, #252]
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, [sp, #276]
    add r12, sp, #32
    str lr, [r12, #0]
    b .QuickSort_label82+0
.QuickSort_label82:
    b .QuickSort_label83+0
.QuickSort_label83:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r12, [sp, #280]
    ldr lr, [sp, #284]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #288]
    ldr r12, [sp, #288]
    str r12, [sp, #292]
    ldr r12, [sp, #292]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #296]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr lr, [sp, #304]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #300]
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr r12, [sp, #312]
    ldr lr, [sp, #316]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    str r12, [sp, #324]
    ldr r12, [sp, #324]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #328]
    ldr r12, [sp, #296]
    ldr lr, [sp, #328]
    and r12, r12, lr
    str r12, [sp, #332]
    ldr r12, [sp, #332]
    cmp r12, #0
    bne .QuickSort_label98+0
    b .QuickSort_label101+0
.QuickSort_label98:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #32
    str lr, [r12, #0]
    b .QuickSort_label83+0
.QuickSort_label101:
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r12, [sp, #344]
    ldr lr, [sp, #348]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    str r12, [sp, #356]
    ldr r12, [sp, #356]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #360]
    ldr r12, [sp, #360]
    cmp r12, #0
    bne .QuickSort_label107+0
    b .QuickSort_label117+0
.QuickSort_label107:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr lr, [sp, #368]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #364]
    add r12, r12, lr
    str r12, [sp, #372]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr lr, [sp, #380]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #376]
    add r12, r12, lr
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    ldr r12, [sp, #372]
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr r12, [sp, #392]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #396]
    ldr lr, [sp, #396]
    add r12, sp, #40
    str lr, [r12, #0]
    b .QuickSort_label117+0
.QuickSort_label117:
    b .QuickSort_label22+0
.QuickSort_post:
getMid:
.getMid_pre:
    push {lr}
    mov r12, #104
    sub sp, sp, r12
.getMid_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r0, [sp, #8]
    ldr r1, =#2
    bl __aeabi_idivmod
    str r1, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #24]
    ldr r12, [sp, #24]
    cmp r12, #0
    bne .getMid_label8+0
    b .getMid_label22+0
.getMid_label8:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #28]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #4
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
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #48]
    ldr lr, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr r0, [sp, #72]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #76]
    ldr r0, [sp, #76]
    mov r12, #104
    add sp, sp, r12
    pop {pc}
.getMid_label22:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr r0, [sp, #80]
    ldr r1, =#2
    bl __aeabi_idiv
    str r0, [sp, #84]
    ldr lr, [sp, #84]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #88]
    add r12, r12, lr
    str r12, [sp, #96]
    ldr lr, [sp, #96]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #100]
    mov r12, #104
    add sp, sp, r12
    pop {pc}
.getMid_post:
getMost:
.getMost_pre:
    push {lr}
    mov r12, #4168
    sub sp, sp, r12
.getMost_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #4004
    add r12, sp, r11
    str lr, [r12, #0]
    b .getMost_label4+0
.getMost_label4:
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4008]
    ldr r12, [sp, #4008]
    ldr lr, =#1000
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #4012]
    ldr r12, [sp, #4012]
    str r12, [sp, #4016]
    ldr r12, [sp, #4016]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #4020]
    ldr r12, [sp, #4020]
    cmp r12, #0
    bne .getMost_label9+0
    b .getMost_label14+0
.getMost_label9:
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4024]
    ldr lr, [sp, #4024]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #4028]
    ldr lr, =#0
    ldr r12, [sp, #4028]
    str lr, [r12, #0]
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4032]
    ldr r12, [sp, #4032]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #4036]
    ldr lr, [sp, #4036]
    mov r11, #4004
    add r12, sp, r11
    str lr, [r12, #0]
    b .getMost_label4+0
.getMost_label14:
    ldr lr, =#0
    mov r11, #4004
    add r12, sp, r11
    str lr, [r12, #0]
    ldr lr, =#0
    mov r11, #4040
    add r12, sp, r11
    str lr, [r12, #0]
    b .getMost_label17+0
.getMost_label17:
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4048]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4052]
    ldr r12, [sp, #4048]
    ldr lr, [sp, #4052]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #4056]
    ldr r12, [sp, #4056]
    str r12, [sp, #4060]
    ldr r12, [sp, #4060]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #4064]
    ldr r12, [sp, #4064]
    cmp r12, #0
    bne .getMost_label23+0
    b .getMost_label42+0
.getMost_label23:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #4072]
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4076]
    ldr lr, [sp, #4076]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #4072]
    add r12, r12, lr
    str r12, [sp, #4080]
    ldr lr, [sp, #4080]
    ldr r12, [lr, #0]
    str r12, [sp, #4084]
    ldr lr, [sp, #4084]
    mov r11, #4068
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #4068
    add lr, sp, r11
    ldr r12, [lr, #0]
    str r12, [sp, #4088]
    ldr lr, [sp, #4088]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #4092]
    mov r11, #4068
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4096
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4096
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    mov r11, #4100
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4100
    add r11, r11, sp
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    mov r11, #4104
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4104
    add r11, r11, sp
    ldr r12, [r11, #0]
    ldr lr, =#1
    add r12, r12, lr
    mov r11, #4108
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4108
    add r11, r11, sp
    ldr lr, [r11, #0]
    ldr r12, [sp, #4092]
    str lr, [r12, #0]
    mov r11, #4068
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4112
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4112
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    mov r11, #4116
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4116
    add r11, r11, sp
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    mov r11, #4120
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4040
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4124
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4120
    add r11, r11, sp
    ldr r12, [r11, #0]
    mov r11, #4124
    add r11, r11, sp
    ldr lr, [r11, #0]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    mov r11, #4128
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4128
    add r11, r11, sp
    ldr r12, [r11, #0]
    mov r11, #4132
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4132
    add r11, r11, sp
    ldr r12, [r11, #0]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    mov r11, #4136
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4136
    add r11, r11, sp
    ldr r12, [r11, #0]
    cmp r12, #0
    bne .getMost_label44+0
    b .getMost_label49+0
.getMost_label42:
    mov r11, #4044
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4140
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4140
    add r11, r11, sp
    ldr r0, [r11, #0]
    mov r12, #4168
    add sp, sp, r12
    pop {pc}
.getMost_label44:
    mov r11, #4068
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4144
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4144
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    mov r11, #4148
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4148
    add r11, r11, sp
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    mov r11, #4152
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4152
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r11, #4040
    add r12, sp, r11
    str lr, [r12, #0]
    mov r11, #4068
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4156
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4156
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r11, #4044
    add r12, sp, r11
    str lr, [r12, #0]
    b .getMost_label49+0
.getMost_label49:
    mov r11, #4004
    add lr, sp, r11
    ldr r12, [lr, #0]
    mov r11, #4160
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4160
    add r11, r11, sp
    ldr r12, [r11, #0]
    ldr lr, =#1
    add r12, r12, lr
    mov r11, #4164
    add r11, r11, sp
    str r12, [r11, #0]
    mov r11, #4164
    add r11, r11, sp
    ldr lr, [r11, #0]
    mov r11, #4004
    add r12, sp, r11
    str lr, [r12, #0]
    b .getMost_label17+0
.getMost_post:
revert:
.revert_pre:
    push {lr}
    mov r12, #112
    sub sp, sp, r12
.revert_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .revert_label5+0
.revert_label5:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    add lr, sp, #12
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
    bne .revert_label11+0
    b .revert_label31+0
.revert_label11:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    add lr, sp, #8
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
    ldr lr, [sp, #48]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #60]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #64]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    ldr r12, [sp, #88]
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #96]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    add r12, sp, #12
    str lr, [r12, #0]
    b .revert_label5+0
.revert_label31:
    ldr r0, =#0
    mov r12, #112
    add sp, sp, r12
    pop {pc}
.revert_post:
arrCopy:
.arrCopy_pre:
    push {lr}
    mov r12, #68
    sub sp, sp, r12
.arrCopy_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .arrCopy_label5+0
.arrCopy_label5:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .arrCopy_label11+0
    b .arrCopy_label21+0
.arrCopy_label11:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #8
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
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    add r12, sp, #8
    str lr, [r12, #0]
    b .arrCopy_label5+0
.arrCopy_label21:
    ldr r0, =#0
    mov r12, #68
    add sp, sp, r12
    pop {pc}
.arrCopy_post:
calSum:
.calSum_pre:
    push {lr}
    mov r12, #128
    sub sp, sp, r12
.calSum_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #12
    str lr, [r12, #0]
    b .calSum_label6+0
.calSum_label6:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
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
    bne .calSum_label12+0
    b .calSum_label27+0
.calSum_label12:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #36]
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
    ldr r12, [sp, #36]
    ldr lr, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, [sp, #56]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    ldr r0, [sp, #60]
    ldr r1, [sp, #64]
    bl __aeabi_idivmod
    str r1, [sp, #68]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #76]
    ldr r12, [sp, #68]
    ldr lr, [sp, #76]
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #80]
    ldr r12, [sp, #80]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    cmp r12, #0
    bne .calSum_label28+0
    b .calSum_label32+0
.calSum_label27:
    ldr r0, =#0
    mov r12, #128
    add sp, sp, r12
    pop {pc}
.calSum_label28:
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
    ldr lr, =#0
    ldr r12, [sp, #100]
    str lr, [r12, #0]
    b .calSum_label37+0
.calSum_label32:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr lr, [sp, #108]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #104]
    add r12, r12, lr
    str r12, [sp, #112]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr lr, [sp, #116]
    ldr r12, [sp, #112]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #8
    str lr, [r12, #0]
    b .calSum_label37+0
.calSum_label37:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    add r12, sp, #12
    str lr, [r12, #0]
    b .calSum_label6+0
.calSum_post:
avgPooling:
.avgPooling_pre:
    push {lr}
    mov r12, #304
    sub sp, sp, r12
.avgPooling_entry:
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
    b .avgPooling_label7+0
.avgPooling_label7:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
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
    bne .avgPooling_label13+0
    b .avgPooling_label20+0
.avgPooling_label13:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr r12, [sp, #40]
    ldr lr, [sp, #48]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #52]
    ldr r12, [sp, #52]
    str r12, [sp, #56]
    ldr r12, [sp, #56]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #60]
    ldr r12, [sp, #60]
    cmp r12, #0
    bne .avgPooling_label25+0
    b .avgPooling_label32+0
.avgPooling_label20:
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    sub r12, r12, lr
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #76]
    ldr lr, [sp, #76]
    add r12, sp, #12
    str lr, [r12, #0]
    b .avgPooling_label77+0
.avgPooling_label25:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, [sp, #80]
    ldr lr, [sp, #96]
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    add r12, sp, #8
    str lr, [r12, #0]
    b .avgPooling_label39+0
.avgPooling_label32:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r12, [sp, #108]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #112]
    ldr r12, [sp, #104]
    ldr lr, [sp, #112]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #124]
    ldr r12, [sp, #124]
    cmp r12, #0
    bne .avgPooling_label42+0
    b .avgPooling_label51+0
.avgPooling_label39:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #128]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    add r12, sp, #12
    str lr, [r12, #0]
    b .avgPooling_label7+0
.avgPooling_label42:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #136]
    add r12, r12, lr
    str r12, [sp, #140]
    ldr lr, [sp, #140]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #148]
    add r12, r12, lr
    str r12, [sp, #152]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r0, [sp, #156]
    ldr r1, [sp, #160]
    bl __aeabi_idiv
    str r0, [sp, #164]
    ldr lr, [sp, #164]
    ldr r12, [sp, #152]
    str lr, [r12, #0]
    b .avgPooling_label76+0
.avgPooling_label51:
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #172]
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr r12, [sp, #168]
    ldr lr, [sp, #184]
    add r12, r12, lr
    str r12, [sp, #188]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, [sp, #188]
    ldr lr, [sp, #192]
    sub r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #204]
    ldr lr, [sp, #208]
    sub r12, r12, lr
    str r12, [sp, #212]
    ldr r12, [sp, #212]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #216]
    ldr lr, [sp, #216]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #200]
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    add r12, sp, #16
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r12, [sp, #232]
    ldr lr, [sp, #236]
    sub r12, r12, lr
    str r12, [sp, #240]
    ldr r12, [sp, #240]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #228]
    add r12, r12, lr
    str r12, [sp, #248]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #252]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r0, [sp, #252]
    ldr r1, [sp, #256]
    bl __aeabi_idiv
    str r0, [sp, #260]
    ldr lr, [sp, #260]
    ldr r12, [sp, #248]
    str lr, [r12, #0]
    b .avgPooling_label76+0
.avgPooling_label76:
    b .avgPooling_label39+0
.avgPooling_label77:
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr r12, [sp, #264]
    ldr lr, [sp, #268]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #272]
    ldr r12, [sp, #272]
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    cmp r12, #0
    bne .avgPooling_label83+0
    b .avgPooling_label89+0
.avgPooling_label83:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #284]
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, =#0
    ldr r12, [sp, #292]
    str lr, [r12, #0]
    add lr, sp, #12
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr r12, [sp, #296]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    add r12, sp, #12
    str lr, [r12, #0]
    b .avgPooling_label77+0
.avgPooling_label89:
    ldr r0, =#0
    mov r12, #304
    add sp, sp, r12
    pop {pc}
.avgPooling_post:
main:
.main_pre:
    push {lr}
    mov r12, #832
    sub sp, sp, r12
.main_entry:
    ldr lr, =#32
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #256]
    ldr lr, =#7
    ldr r12, [sp, #256]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #260]
    ldr lr, =#23
    ldr r12, [sp, #260]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #264]
    ldr lr, =#89
    ldr r12, [sp, #264]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #268]
    ldr lr, =#26
    ldr r12, [sp, #268]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #272]
    ldr lr, =#282
    ldr r12, [sp, #272]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, =#254
    ldr r12, [sp, #276]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #280]
    ldr lr, =#27
    ldr r12, [sp, #280]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, =#5
    ldr r12, [sp, #284]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #288]
    ldr lr, =#83
    ldr r12, [sp, #288]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, =#273
    ldr r12, [sp, #292]
    str lr, [r12, #0]
    ldr lr, =#10
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #296]
    ldr lr, =#574
    ldr r12, [sp, #296]
    str lr, [r12, #0]
    ldr lr, =#11
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, =#905
    ldr r12, [sp, #300]
    str lr, [r12, #0]
    ldr lr, =#12
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #304]
    ldr lr, =#354
    ldr r12, [sp, #304]
    str lr, [r12, #0]
    ldr lr, =#13
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, =#657
    ldr r12, [sp, #308]
    str lr, [r12, #0]
    ldr lr, =#14
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #312]
    ldr lr, =#935
    ldr r12, [sp, #312]
    str lr, [r12, #0]
    ldr lr, =#15
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #316]
    ldr lr, =#264
    ldr r12, [sp, #316]
    str lr, [r12, #0]
    ldr lr, =#16
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #320]
    ldr lr, =#639
    ldr r12, [sp, #320]
    str lr, [r12, #0]
    ldr lr, =#17
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #324]
    ldr lr, =#459
    ldr r12, [sp, #324]
    str lr, [r12, #0]
    ldr lr, =#18
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #328]
    ldr lr, =#29
    ldr r12, [sp, #328]
    str lr, [r12, #0]
    ldr lr, =#19
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, =#68
    ldr r12, [sp, #332]
    str lr, [r12, #0]
    ldr lr, =#20
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #336]
    ldr lr, =#929
    ldr r12, [sp, #336]
    str lr, [r12, #0]
    ldr lr, =#21
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, =#756
    ldr r12, [sp, #340]
    str lr, [r12, #0]
    ldr lr, =#22
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #344]
    ldr lr, =#452
    ldr r12, [sp, #344]
    str lr, [r12, #0]
    ldr lr, =#23
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #348]
    ldr lr, =#279
    ldr r12, [sp, #348]
    str lr, [r12, #0]
    ldr lr, =#24
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #352]
    ldr lr, =#58
    ldr r12, [sp, #352]
    str lr, [r12, #0]
    ldr lr, =#25
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, =#87
    ldr r12, [sp, #356]
    str lr, [r12, #0]
    ldr lr, =#26
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #360]
    ldr lr, =#96
    ldr r12, [sp, #360]
    str lr, [r12, #0]
    ldr lr, =#27
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #364]
    ldr lr, =#36
    ldr r12, [sp, #364]
    str lr, [r12, #0]
    ldr lr, =#28
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #368]
    ldr lr, =#39
    ldr r12, [sp, #368]
    str lr, [r12, #0]
    ldr lr, =#29
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, =#28
    ldr r12, [sp, #372]
    str lr, [r12, #0]
    ldr lr, =#30
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #376]
    ldr lr, =#1
    ldr r12, [sp, #376]
    str lr, [r12, #0]
    ldr lr, =#31
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #380]
    ldr lr, =#290
    ldr r12, [sp, #380]
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #388]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #392]
    ldr r0, [sp, #388]
    ldr r1, [sp, #392]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #396]
    ldr lr, [sp, #396]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #400]
    ldr r0, [sp, #400]
    mov r12, #0
    sub sp, sp, r12
    bl revert
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #404]
    ldr lr, [sp, #404]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label41+0
.main_label41:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #412]
    ldr r12, [sp, #412]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #416]
    ldr r12, [sp, #416]
    str r12, [sp, #420]
    ldr r12, [sp, #420]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #424]
    ldr r12, [sp, #424]
    cmp r12, #0
    bne .main_label46+0
    b .main_label53+0
.main_label46:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr lr, [sp, #428]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #432]
    ldr lr, [sp, #432]
    ldr r12, [lr, #0]
    str r12, [sp, #436]
    ldr lr, [sp, #436]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #440]
    ldr r0, [sp, #440]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #444]
    ldr r12, [sp, #444]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #448]
    ldr lr, [sp, #448]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label41+0
.main_label53:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #452]
    ldr r0, [sp, #452]
    mov r12, #0
    sub sp, sp, r12
    bl bubblesort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #456]
    ldr lr, [sp, #456]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label56+0
.main_label56:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #460]
    ldr r12, [sp, #460]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #464]
    ldr r12, [sp, #464]
    str r12, [sp, #468]
    ldr r12, [sp, #468]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #472]
    ldr r12, [sp, #472]
    cmp r12, #0
    bne .main_label61+0
    b .main_label68+0
.main_label61:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #476]
    ldr lr, [sp, #476]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #480]
    ldr lr, [sp, #480]
    ldr r12, [lr, #0]
    str r12, [sp, #484]
    ldr lr, [sp, #484]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #488]
    ldr r0, [sp, #488]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #492]
    ldr r12, [sp, #492]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #496]
    ldr lr, [sp, #496]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label56+0
.main_label68:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #500]
    ldr r0, [sp, #500]
    mov r12, #0
    sub sp, sp, r12
    bl getMid
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #504]
    ldr lr, [sp, #504]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #508]
    ldr r0, [sp, #508]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #512]
    ldr r0, [sp, #512]
    mov r12, #0
    sub sp, sp, r12
    bl getMost
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #516]
    ldr lr, [sp, #516]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #520]
    ldr r0, [sp, #520]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #524]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #528]
    ldr r0, [sp, #524]
    ldr r1, [sp, #528]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #532]
    ldr lr, [sp, #532]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #536]
    ldr r0, [sp, #536]
    mov r12, #0
    sub sp, sp, r12
    bl bubblesort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #540]
    ldr lr, [sp, #540]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label80+0
.main_label80:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #544]
    ldr r12, [sp, #544]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #548]
    ldr r12, [sp, #548]
    str r12, [sp, #552]
    ldr r12, [sp, #552]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #556]
    ldr r12, [sp, #556]
    cmp r12, #0
    bne .main_label85+0
    b .main_label92+0
.main_label85:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #560]
    ldr lr, [sp, #560]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #564]
    ldr lr, [sp, #564]
    ldr r12, [lr, #0]
    str r12, [sp, #568]
    ldr lr, [sp, #568]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #572]
    ldr r0, [sp, #572]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #576]
    ldr r12, [sp, #576]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #580]
    ldr lr, [sp, #580]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label80+0
.main_label92:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #584]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #588]
    ldr r0, [sp, #584]
    ldr r1, [sp, #588]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #592]
    ldr lr, [sp, #592]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #596]
    ldr r0, [sp, #596]
    mov r12, #0
    sub sp, sp, r12
    bl insertsort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #600]
    ldr lr, [sp, #600]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label98+0
.main_label98:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #604]
    ldr r12, [sp, #604]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #608]
    ldr r12, [sp, #608]
    str r12, [sp, #612]
    ldr r12, [sp, #612]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #616]
    ldr r12, [sp, #616]
    cmp r12, #0
    bne .main_label103+0
    b .main_label110+0
.main_label103:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #620]
    ldr lr, [sp, #620]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #624]
    ldr lr, [sp, #624]
    ldr r12, [lr, #0]
    str r12, [sp, #628]
    ldr lr, [sp, #628]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #632]
    ldr r0, [sp, #632]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #636]
    ldr r12, [sp, #636]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #640]
    ldr lr, [sp, #640]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label98+0
.main_label110:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #644]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #648]
    ldr r0, [sp, #644]
    ldr r1, [sp, #648]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #652]
    ldr lr, [sp, #652]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    ldr lr, =#31
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #656]
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #660]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #664]
    ldr r0, [sp, #656]
    ldr r1, [sp, #660]
    ldr r2, [sp, #664]
    mov r12, #0
    sub sp, sp, r12
    bl QuickSort
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #668]
    ldr lr, [sp, #668]
    add r12, sp, #384
    str lr, [r12, #0]
    b .main_label118+0
.main_label118:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #672]
    ldr r12, [sp, #672]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #676]
    ldr r12, [sp, #676]
    str r12, [sp, #680]
    ldr r12, [sp, #680]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #684]
    ldr r12, [sp, #684]
    cmp r12, #0
    bne .main_label123+0
    b .main_label130+0
.main_label123:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #688]
    ldr lr, [sp, #688]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #692]
    ldr lr, [sp, #692]
    ldr r12, [lr, #0]
    str r12, [sp, #696]
    ldr lr, [sp, #696]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #700]
    ldr r0, [sp, #700]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #704]
    ldr r12, [sp, #704]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #708]
    ldr lr, [sp, #708]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label118+0
.main_label130:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #712]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #716]
    ldr r0, [sp, #712]
    ldr r1, [sp, #716]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #720]
    ldr lr, [sp, #720]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #724]
    ldr r0, [sp, #724]
    ldr r1, =#4
    mov r12, #0
    sub sp, sp, r12
    bl calSum
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #728]
    ldr lr, [sp, #728]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label136+0
.main_label136:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #732]
    ldr r12, [sp, #732]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #736]
    ldr r12, [sp, #736]
    str r12, [sp, #740]
    ldr r12, [sp, #740]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #744]
    ldr r12, [sp, #744]
    cmp r12, #0
    bne .main_label141+0
    b .main_label148+0
.main_label141:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #748]
    ldr lr, [sp, #748]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #752]
    ldr lr, [sp, #752]
    ldr r12, [lr, #0]
    str r12, [sp, #756]
    ldr lr, [sp, #756]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #760]
    ldr r0, [sp, #760]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #764]
    ldr r12, [sp, #764]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #768]
    ldr lr, [sp, #768]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label136+0
.main_label148:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #772]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #776]
    ldr r0, [sp, #772]
    ldr r1, [sp, #776]
    mov r12, #0
    sub sp, sp, r12
    bl arrCopy
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #780]
    ldr lr, [sp, #780]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #784]
    ldr r0, [sp, #784]
    ldr r1, =#3
    mov r12, #0
    sub sp, sp, r12
    bl avgPooling
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #788]
    ldr lr, [sp, #788]
    add r12, sp, #384
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label154+0
.main_label154:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #792]
    ldr r12, [sp, #792]
    ldr lr, =#32
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #796]
    ldr r12, [sp, #796]
    str r12, [sp, #800]
    ldr r12, [sp, #800]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #804]
    ldr r12, [sp, #804]
    cmp r12, #0
    bne .main_label159+0
    b .main_label166+0
.main_label159:
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #808]
    ldr lr, [sp, #808]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #128
    add r12, r12, lr
    str r12, [sp, #812]
    ldr lr, [sp, #812]
    ldr r12, [lr, #0]
    str r12, [sp, #816]
    ldr lr, [sp, #816]
    add r12, sp, #384
    str lr, [r12, #0]
    add lr, sp, #384
    ldr r12, [lr, #0]
    str r12, [sp, #820]
    ldr r0, [sp, #820]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #408
    ldr r12, [lr, #0]
    str r12, [sp, #824]
    ldr r12, [sp, #824]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #828]
    ldr lr, [sp, #828]
    add r12, sp, #408
    str lr, [r12, #0]
    b .main_label154+0
.main_label166:
    ldr r0, =#0
    mov r12, #832
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
