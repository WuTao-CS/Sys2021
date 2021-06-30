    .arch armv7-a
    .file ""
    .text
    .global lengthOfLastWord
    .global main
    .syntax unified
    .arm
.global_vars:
lengthOfLastWord:
.lengthOfLastWord_pre:
    push {lr}
    mov r12, #228
    sub sp, sp, r12
.lengthOfLastWord_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #20]
    ldr r12, [sp, #20]
    cmp r12, #0
    bne .lengthOfLastWord_label8+0
    b .lengthOfLastWord_label9+0
.lengthOfLastWord_label8:
    ldr r0, =#0
    mov r12, #228
    add sp, sp, r12
    pop {pc}
.lengthOfLastWord_label9:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r12, [sp, #28]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #32]
    ldr lr, [sp, #32]
    add r12, sp, #24
    str lr, [r12, #0]
    b .lengthOfLastWord_label13+0
.lengthOfLastWord_label13:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #40]
    ldr r12, [sp, #36]
    ldr lr, [sp, #40]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #52]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr lr, [sp, #60]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #56]
    add r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #68]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #72]
    ldr r12, [sp, #72]
    str r12, [sp, #76]
    ldr r12, [sp, #76]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #80]
    ldr r12, [sp, #52]
    ldr lr, [sp, #80]
    and r12, r12, lr
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    cmp r12, #0
    bne .lengthOfLastWord_label27+0
    b .lengthOfLastWord_label30+0
.lengthOfLastWord_label27:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #88]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #24
    str lr, [r12, #0]
    b .lengthOfLastWord_label13+0
.lengthOfLastWord_label30:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #100]
    ldr r12, [sp, #96]
    ldr lr, [sp, #100]
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
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
    bne .lengthOfLastWord_label36+0
    b .lengthOfLastWord_label37+0
.lengthOfLastWord_label36:
    ldr r0, =#0
    mov r12, #228
    add sp, sp, r12
    pop {pc}
.lengthOfLastWord_label37:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    ldr lr, [sp, #120]
    add r12, sp, #116
    str lr, [r12, #0]
    b .lengthOfLastWord_label40+0
.lengthOfLastWord_label40:
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #128]
    ldr r12, [sp, #124]
    ldr lr, [sp, #128]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    str r12, [sp, #136]
    ldr r12, [sp, #136]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    cmp r12, #0
    bne .lengthOfLastWord_label46+0
    b .lengthOfLastWord_label54+0
.lengthOfLastWord_label46:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr lr, [sp, #148]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #144]
    add r12, r12, lr
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #156]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    moveq r12, #1
    str r12, [sp, #160]
    ldr r12, [sp, #160]
    str r12, [sp, #164]
    ldr r12, [sp, #164]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    cmp r12, #0
    bne .lengthOfLastWord_label58+0
    b .lengthOfLastWord_label68+0
.lengthOfLastWord_label54:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r12, [sp, #172]
    ldr lr, [sp, #176]
    sub r12, r12, lr
    str r12, [sp, #180]
    ldr r0, [sp, #180]
    mov r12, #228
    add sp, sp, r12
    pop {pc}
.lengthOfLastWord_label58:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr r12, [sp, #184]
    ldr lr, [sp, #188]
    sub r12, r12, lr
    str r12, [sp, #192]
    ldr r12, [sp, #192]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #196]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #204]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #204]
    ldr lr, [sp, #208]
    sub r12, r12, lr
    str r12, [sp, #212]
    ldr r12, [sp, #196]
    ldr lr, [sp, #212]
    sub r12, r12, lr
    str r12, [sp, #216]
    ldr r0, [sp, #216]
    mov r12, #228
    add sp, sp, r12
    pop {pc}
.lengthOfLastWord_label68:
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #224]
    ldr lr, [sp, #224]
    add r12, sp, #116
    str lr, [r12, #0]
    b .lengthOfLastWord_label40+0
.lengthOfLastWord_post:
main:
.main_pre:
    push {lr}
    mov r12, #112
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #44]
    ldr r12, =#0
    ldr lr, =#4
    sub r12, r12, lr
    str r12, [sp, #48]
    ldr lr, [sp, #48]
    ldr r12, [sp, #44]
    str lr, [r12, #0]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #52]
    ldr lr, =#3
    ldr r12, [sp, #52]
    str lr, [r12, #0]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #56]
    ldr lr, =#9
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    ldr lr, =#3
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #60]
    ldr r12, =#0
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #64]
    ldr lr, [sp, #64]
    ldr r12, [sp, #60]
    str lr, [r12, #0]
    ldr lr, =#4
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #68]
    ldr lr, =#0
    ldr r12, [sp, #68]
    str lr, [r12, #0]
    ldr lr, =#5
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, =#1
    ldr r12, [sp, #72]
    str lr, [r12, #0]
    ldr lr, =#6
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #76]
    ldr r12, =#0
    ldr lr, =#6
    sub r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    ldr r12, [sp, #76]
    str lr, [r12, #0]
    ldr lr, =#7
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, =#5
    ldr r12, [sp, #84]
    str lr, [r12, #0]
    ldr lr, =#8
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, =#7
    ldr r12, [sp, #88]
    str lr, [r12, #0]
    ldr lr, =#9
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #92]
    ldr lr, =#8
    ldr r12, [sp, #92]
    str lr, [r12, #0]
    ldr lr, =#10
    add r12, sp, #0
    str lr, [r12, #0]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #96]
    ldr r1, [sp, #100]
    mov r12, #0
    sub sp, sp, r12
    bl lengthOfLastWord
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #104]
    ldr lr, [sp, #104]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r0, [sp, #108]
    mov r12, #112
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
