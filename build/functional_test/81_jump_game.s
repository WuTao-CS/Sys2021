    .arch armv7-a
    .file ""
    .text
    .global canJump
    .global main
    .syntax unified
    .arm
.global_vars:
canJump:
.canJump_pre:
    push {lr}
    mov r12, #344
    sub sp, sp, r12
.canJump_entry:
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
    ldr lr, =#1
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
    bne .canJump_label8+0
    b .canJump_label9+0
.canJump_label8:
    ldr r0, =#1
    mov r12, #344
    add sp, sp, r12
    pop {pc}
.canJump_label9:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #24]
    add r12, r12, lr
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #36]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #40]
    ldr r12, [sp, #32]
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
    ldr r12, [sp, #52]
    cmp r12, #0
    bne .canJump_label18+0
    b .canJump_label19+0
.canJump_label18:
    ldr r0, =#1
    mov r12, #344
    add sp, sp, r12
    pop {pc}
.canJump_label19:
    ldr lr, =#0
    add r12, sp, #96
    str lr, [r12, #0]
    b .canJump_label22+0
.canJump_label22:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r12, [sp, #104]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #108]
    ldr r12, [sp, #100]
    ldr lr, [sp, #108]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #112]
    ldr r12, [sp, #112]
    str r12, [sp, #116]
    ldr r12, [sp, #116]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #120]
    ldr r12, [sp, #120]
    cmp r12, #0
    bne .canJump_label29+0
    b .canJump_label34+0
.canJump_label29:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr lr, [sp, #124]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #56
    add r12, r12, lr
    str r12, [sp, #128]
    ldr lr, =#0
    ldr r12, [sp, #128]
    str lr, [r12, #0]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #132]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #136]
    ldr lr, [sp, #136]
    add r12, sp, #96
    str lr, [r12, #0]
    b .canJump_label22+0
.canJump_label34:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #140]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #56
    add r12, r12, lr
    str r12, [sp, #148]
    ldr lr, =#1
    ldr r12, [sp, #148]
    str lr, [r12, #0]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr r12, [sp, #152]
    ldr lr, =#2
    sub r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    add r12, sp, #96
    str lr, [r12, #0]
    b .canJump_label40+0
.canJump_label40:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #164]
    ldr r12, [sp, #160]
    ldr lr, [sp, #164]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #168]
    ldr r12, [sp, #168]
    str r12, [sp, #172]
    ldr r12, [sp, #172]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #176]
    ldr r12, [sp, #176]
    cmp r12, #0
    bne .canJump_label46+0
    b .canJump_label59+0
.canJump_label46:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    add lr, sp, #96
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
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr r12, [sp, #200]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #204]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, [sp, #204]
    ldr lr, [sp, #208]
    sub r12, r12, lr
    str r12, [sp, #212]
    ldr r12, [sp, #196]
    ldr lr, [sp, #212]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    str r12, [sp, #220]
    ldr r12, [sp, #220]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #224]
    ldr r12, [sp, #224]
    cmp r12, #0
    bne .canJump_label62+0
    b .canJump_label67+0
.canJump_label59:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #56
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, [sp, #228]
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    ldr r0, [sp, #232]
    mov r12, #344
    add sp, sp, r12
    pop {pc}
.canJump_label62:
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr lr, [sp, #240]
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #236]
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr lr, [sp, #248]
    add r12, sp, #180
    str lr, [r12, #0]
    b .canJump_label72+0
.canJump_label67:
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #252]
    ldr r12, [sp, #252]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #256]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr r12, [sp, #256]
    ldr lr, [sp, #260]
    sub r12, r12, lr
    str r12, [sp, #264]
    ldr lr, [sp, #264]
    add r12, sp, #180
    str lr, [r12, #0]
    b .canJump_label72+0
.canJump_label72:
    b .canJump_label73+0
.canJump_label73:
    add lr, sp, #180
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr r12, =#0
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #272]
    ldr r12, [sp, #268]
    ldr lr, [sp, #272]
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #276]
    ldr r12, [sp, #276]
    str r12, [sp, #280]
    ldr r12, [sp, #280]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #284]
    ldr r12, [sp, #284]
    cmp r12, #0
    bne .canJump_label79+0
    b .canJump_label88+0
.canJump_label79:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    add lr, sp, #180
    ldr r12, [lr, #0]
    str r12, [sp, #292]
    ldr r12, [sp, #288]
    ldr lr, [sp, #292]
    add r12, r12, lr
    str r12, [sp, #296]
    ldr lr, [sp, #296]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #56
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #308]
    ldr r12, [sp, #308]
    str r12, [sp, #312]
    ldr r12, [sp, #312]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #316]
    ldr r12, [sp, #316]
    cmp r12, #0
    bne .canJump_label91+0
    b .canJump_label94+0
.canJump_label88:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, [sp, #320]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    add r12, sp, #96
    str lr, [r12, #0]
    b .canJump_label40+0
.canJump_label91:
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr lr, [sp, #328]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #56
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, =#1
    ldr r12, [sp, #332]
    str lr, [r12, #0]
    b .canJump_label94+0
.canJump_label94:
    add lr, sp, #180
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, [sp, #336]
    ldr lr, =#1
    sub r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #180
    str lr, [r12, #0]
    b .canJump_label73+0
.canJump_post:
main:
.main_pre:
    push {lr}
    mov r12, #100
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
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #4
    add r12, r12, lr
    str r12, [sp, #84]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r0, [sp, #84]
    ldr r1, [sp, #88]
    mov r12, #0
    sub sp, sp, r12
    bl canJump
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #92]
    ldr lr, [sp, #92]
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr r0, [sp, #96]
    mov r12, #100
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
