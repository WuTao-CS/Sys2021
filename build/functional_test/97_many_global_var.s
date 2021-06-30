    .arch armv7-a
    .file ""
    .text
    .global testParam8
    .global testParam16
    .global testParam32
    .global main
    .syntax unified
    .arm
    .global a0
    .global a1
    .global a2
    .global a3
    .global a4
    .global a5
    .global a6
    .global a7
    .global a8
    .global a9
    .global a10
    .global a11
    .global a12
    .global a13
    .global a14
    .global a15
    .global a16
    .global a17
    .global a18
    .global a19
    .global a20
    .global a21
    .global a22
    .global a23
    .global a24
    .global a25
    .global a26
    .global a27
    .global a28
    .global a29
    .global a30
    .global a31
    .global a32
    .global a33
    .global a34
    .global a35
    .global a36
    .global a37
    .global a38
    .global a39
.global_vars:
    .long a0
    .long a1
    .long a2
    .long a3
    .long a4
    .long a5
    .long a6
    .long a7
    .long a8
    .long a9
    .long a10
    .long a11
    .long a12
    .long a13
    .long a14
    .long a15
    .long a16
    .long a17
    .long a18
    .long a19
    .long a20
    .long a21
    .long a22
    .long a23
    .long a24
    .long a25
    .long a26
    .long a27
    .long a28
    .long a29
    .long a30
    .long a31
    .long a32
    .long a33
    .long a34
    .long a35
    .long a36
    .long a37
    .long a38
    .long a39
testParam8:
.testParam8_pre:
    push {lr}
    mov r12, #108
    sub sp, sp, r12
    ldr r12, [sp, #112]
    str r12, [sp, #0]
    ldr r12, [sp, #116]
    str r12, [sp, #4]
    ldr r12, [sp, #120]
    str r12, [sp, #8]
    ldr r12, [sp, #124]
    str r12, [sp, #12]
.testParam8_entry:
    mov lr, r0
    add r12, sp, #16
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #20
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #24
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #28
    str lr, [r12, #0]
    ldr lr, [sp, #0]
    add r12, sp, #32
    str lr, [r12, #0]
    ldr lr, [sp, #4]
    add r12, sp, #36
    str lr, [r12, #0]
    ldr lr, [sp, #8]
    add r12, sp, #40
    str lr, [r12, #0]
    ldr lr, [sp, #12]
    add r12, sp, #44
    str lr, [r12, #0]
    add lr, sp, #16
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr r12, [sp, #48]
    ldr lr, [sp, #52]
    add r12, r12, lr
    str r12, [sp, #56]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr r12, [sp, #56]
    ldr lr, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr r12, [sp, #64]
    ldr lr, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #72]
    ldr lr, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #80]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #80]
    ldr lr, [sp, #84]
    add r12, r12, lr
    str r12, [sp, #88]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r12, [sp, #88]
    ldr lr, [sp, #92]
    add r12, r12, lr
    str r12, [sp, #96]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r12, [sp, #96]
    ldr lr, [sp, #100]
    add r12, r12, lr
    str r12, [sp, #104]
    ldr r0, [sp, #104]
    mov r12, #108
    add sp, sp, r12
    pop {pc}
.testParam8_post:
testParam16:
.testParam16_pre:
    push {lr}
    mov r12, #236
    sub sp, sp, r12
    ldr r12, [sp, #240]
    str r12, [sp, #0]
    ldr r12, [sp, #244]
    str r12, [sp, #4]
    ldr r12, [sp, #248]
    str r12, [sp, #8]
    ldr r12, [sp, #252]
    str r12, [sp, #12]
    ldr r12, [sp, #256]
    str r12, [sp, #16]
    ldr r12, [sp, #260]
    str r12, [sp, #20]
    ldr r12, [sp, #264]
    str r12, [sp, #24]
    ldr r12, [sp, #268]
    str r12, [sp, #28]
    ldr r12, [sp, #272]
    str r12, [sp, #32]
    ldr r12, [sp, #276]
    str r12, [sp, #36]
    ldr r12, [sp, #280]
    str r12, [sp, #40]
    ldr r12, [sp, #284]
    str r12, [sp, #44]
.testParam16_entry:
    mov lr, r0
    add r12, sp, #48
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #52
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #56
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #60
    str lr, [r12, #0]
    ldr lr, [sp, #0]
    add r12, sp, #64
    str lr, [r12, #0]
    ldr lr, [sp, #4]
    add r12, sp, #68
    str lr, [r12, #0]
    ldr lr, [sp, #8]
    add r12, sp, #72
    str lr, [r12, #0]
    ldr lr, [sp, #12]
    add r12, sp, #76
    str lr, [r12, #0]
    ldr lr, [sp, #16]
    add r12, sp, #80
    str lr, [r12, #0]
    ldr lr, [sp, #20]
    add r12, sp, #84
    str lr, [r12, #0]
    ldr lr, [sp, #24]
    add r12, sp, #88
    str lr, [r12, #0]
    ldr lr, [sp, #28]
    add r12, sp, #92
    str lr, [r12, #0]
    ldr lr, [sp, #32]
    add r12, sp, #96
    str lr, [r12, #0]
    ldr lr, [sp, #36]
    add r12, sp, #100
    str lr, [r12, #0]
    ldr lr, [sp, #40]
    add r12, sp, #104
    str lr, [r12, #0]
    ldr lr, [sp, #44]
    add r12, sp, #108
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #112]
    ldr lr, [sp, #116]
    add r12, r12, lr
    str r12, [sp, #120]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    ldr r12, [sp, #120]
    ldr lr, [sp, #124]
    add r12, r12, lr
    str r12, [sp, #128]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    ldr r12, [sp, #128]
    ldr lr, [sp, #132]
    sub r12, r12, lr
    str r12, [sp, #136]
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr r12, [sp, #136]
    ldr lr, [sp, #140]
    sub r12, r12, lr
    str r12, [sp, #144]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #144]
    ldr lr, [sp, #148]
    sub r12, r12, lr
    str r12, [sp, #152]
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr r12, [sp, #152]
    ldr lr, [sp, #156]
    sub r12, r12, lr
    str r12, [sp, #160]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr r12, [sp, #160]
    ldr lr, [sp, #164]
    sub r12, r12, lr
    str r12, [sp, #168]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    ldr r12, [sp, #168]
    ldr lr, [sp, #172]
    add r12, r12, lr
    str r12, [sp, #176]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr r12, [sp, #176]
    ldr lr, [sp, #180]
    add r12, r12, lr
    str r12, [sp, #184]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr r12, [sp, #184]
    ldr lr, [sp, #188]
    add r12, r12, lr
    str r12, [sp, #192]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr r12, [sp, #192]
    ldr lr, [sp, #196]
    add r12, r12, lr
    str r12, [sp, #200]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr r12, [sp, #200]
    ldr lr, [sp, #204]
    add r12, r12, lr
    str r12, [sp, #208]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr r12, [sp, #208]
    ldr lr, [sp, #212]
    add r12, r12, lr
    str r12, [sp, #216]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    ldr r12, [sp, #216]
    ldr lr, [sp, #220]
    add r12, r12, lr
    str r12, [sp, #224]
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr r12, [sp, #224]
    ldr lr, [sp, #228]
    add r12, r12, lr
    str r12, [sp, #232]
    ldr r0, [sp, #232]
    mov r12, #236
    add sp, sp, r12
    pop {pc}
.testParam16_post:
testParam32:
.testParam32_pre:
    push {lr}
    mov r12, #492
    sub sp, sp, r12
    ldr r12, [sp, #496]
    str r12, [sp, #0]
    ldr r12, [sp, #500]
    str r12, [sp, #4]
    ldr r12, [sp, #504]
    str r12, [sp, #8]
    ldr r12, [sp, #508]
    str r12, [sp, #12]
    ldr r12, [sp, #512]
    str r12, [sp, #16]
    ldr r12, [sp, #516]
    str r12, [sp, #20]
    ldr r12, [sp, #520]
    str r12, [sp, #24]
    ldr r12, [sp, #524]
    str r12, [sp, #28]
    ldr r12, [sp, #528]
    str r12, [sp, #32]
    ldr r12, [sp, #532]
    str r12, [sp, #36]
    ldr r12, [sp, #536]
    str r12, [sp, #40]
    ldr r12, [sp, #540]
    str r12, [sp, #44]
    ldr r12, [sp, #544]
    str r12, [sp, #48]
    ldr r12, [sp, #548]
    str r12, [sp, #52]
    ldr r12, [sp, #552]
    str r12, [sp, #56]
    ldr r12, [sp, #556]
    str r12, [sp, #60]
    ldr r12, [sp, #560]
    str r12, [sp, #64]
    ldr r12, [sp, #564]
    str r12, [sp, #68]
    ldr r12, [sp, #568]
    str r12, [sp, #72]
    ldr r12, [sp, #572]
    str r12, [sp, #76]
    ldr r12, [sp, #576]
    str r12, [sp, #80]
    ldr r12, [sp, #580]
    str r12, [sp, #84]
    ldr r12, [sp, #584]
    str r12, [sp, #88]
    ldr r12, [sp, #588]
    str r12, [sp, #92]
    ldr r12, [sp, #592]
    str r12, [sp, #96]
    ldr r12, [sp, #596]
    str r12, [sp, #100]
    ldr r12, [sp, #600]
    str r12, [sp, #104]
    ldr r12, [sp, #604]
    str r12, [sp, #108]
.testParam32_entry:
    mov lr, r0
    add r12, sp, #112
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #116
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #120
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #124
    str lr, [r12, #0]
    ldr lr, [sp, #0]
    add r12, sp, #128
    str lr, [r12, #0]
    ldr lr, [sp, #4]
    add r12, sp, #132
    str lr, [r12, #0]
    ldr lr, [sp, #8]
    add r12, sp, #136
    str lr, [r12, #0]
    ldr lr, [sp, #12]
    add r12, sp, #140
    str lr, [r12, #0]
    ldr lr, [sp, #16]
    add r12, sp, #144
    str lr, [r12, #0]
    ldr lr, [sp, #20]
    add r12, sp, #148
    str lr, [r12, #0]
    ldr lr, [sp, #24]
    add r12, sp, #152
    str lr, [r12, #0]
    ldr lr, [sp, #28]
    add r12, sp, #156
    str lr, [r12, #0]
    ldr lr, [sp, #32]
    add r12, sp, #160
    str lr, [r12, #0]
    ldr lr, [sp, #36]
    add r12, sp, #164
    str lr, [r12, #0]
    ldr lr, [sp, #40]
    add r12, sp, #168
    str lr, [r12, #0]
    ldr lr, [sp, #44]
    add r12, sp, #172
    str lr, [r12, #0]
    ldr lr, [sp, #48]
    add r12, sp, #176
    str lr, [r12, #0]
    ldr lr, [sp, #52]
    add r12, sp, #180
    str lr, [r12, #0]
    ldr lr, [sp, #56]
    add r12, sp, #184
    str lr, [r12, #0]
    ldr lr, [sp, #60]
    add r12, sp, #188
    str lr, [r12, #0]
    ldr lr, [sp, #64]
    add r12, sp, #192
    str lr, [r12, #0]
    ldr lr, [sp, #68]
    add r12, sp, #196
    str lr, [r12, #0]
    ldr lr, [sp, #72]
    add r12, sp, #200
    str lr, [r12, #0]
    ldr lr, [sp, #76]
    add r12, sp, #204
    str lr, [r12, #0]
    ldr lr, [sp, #80]
    add r12, sp, #208
    str lr, [r12, #0]
    ldr lr, [sp, #84]
    add r12, sp, #212
    str lr, [r12, #0]
    ldr lr, [sp, #88]
    add r12, sp, #216
    str lr, [r12, #0]
    ldr lr, [sp, #92]
    add r12, sp, #220
    str lr, [r12, #0]
    ldr lr, [sp, #96]
    add r12, sp, #224
    str lr, [r12, #0]
    ldr lr, [sp, #100]
    add r12, sp, #228
    str lr, [r12, #0]
    ldr lr, [sp, #104]
    add r12, sp, #232
    str lr, [r12, #0]
    ldr lr, [sp, #108]
    add r12, sp, #236
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r12, [sp, #240]
    ldr lr, [sp, #244]
    add r12, r12, lr
    str r12, [sp, #248]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #252]
    ldr r12, [sp, #248]
    ldr lr, [sp, #252]
    add r12, r12, lr
    str r12, [sp, #256]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr r12, [sp, #256]
    ldr lr, [sp, #260]
    add r12, r12, lr
    str r12, [sp, #264]
    add lr, sp, #128
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr r12, [sp, #264]
    ldr lr, [sp, #268]
    add r12, r12, lr
    str r12, [sp, #272]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    ldr r12, [sp, #272]
    ldr lr, [sp, #276]
    add r12, r12, lr
    str r12, [sp, #280]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #284]
    ldr r12, [sp, #280]
    ldr lr, [sp, #284]
    add r12, r12, lr
    str r12, [sp, #288]
    add lr, sp, #140
    ldr r12, [lr, #0]
    str r12, [sp, #292]
    ldr r12, [sp, #288]
    ldr lr, [sp, #292]
    add r12, r12, lr
    str r12, [sp, #296]
    add lr, sp, #144
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    ldr r12, [sp, #296]
    ldr lr, [sp, #300]
    add r12, r12, lr
    str r12, [sp, #304]
    add lr, sp, #148
    ldr r12, [lr, #0]
    str r12, [sp, #308]
    ldr r12, [sp, #304]
    ldr lr, [sp, #308]
    add r12, r12, lr
    str r12, [sp, #312]
    add lr, sp, #152
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr r12, [sp, #312]
    ldr lr, [sp, #316]
    add r12, r12, lr
    str r12, [sp, #320]
    add lr, sp, #156
    ldr r12, [lr, #0]
    str r12, [sp, #324]
    ldr r12, [sp, #320]
    ldr lr, [sp, #324]
    add r12, r12, lr
    str r12, [sp, #328]
    add lr, sp, #160
    ldr r12, [lr, #0]
    str r12, [sp, #332]
    ldr r12, [sp, #328]
    ldr lr, [sp, #332]
    add r12, r12, lr
    str r12, [sp, #336]
    add lr, sp, #164
    ldr r12, [lr, #0]
    str r12, [sp, #340]
    ldr r12, [sp, #336]
    ldr lr, [sp, #340]
    add r12, r12, lr
    str r12, [sp, #344]
    add lr, sp, #168
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r12, [sp, #344]
    ldr lr, [sp, #348]
    add r12, r12, lr
    str r12, [sp, #352]
    add lr, sp, #172
    ldr r12, [lr, #0]
    str r12, [sp, #356]
    ldr r12, [sp, #352]
    ldr lr, [sp, #356]
    add r12, r12, lr
    str r12, [sp, #360]
    add lr, sp, #176
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    ldr r12, [sp, #360]
    ldr lr, [sp, #364]
    add r12, r12, lr
    str r12, [sp, #368]
    add lr, sp, #180
    ldr r12, [lr, #0]
    str r12, [sp, #372]
    ldr r12, [sp, #368]
    ldr lr, [sp, #372]
    add r12, r12, lr
    str r12, [sp, #376]
    add lr, sp, #184
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr r12, [sp, #376]
    ldr lr, [sp, #380]
    sub r12, r12, lr
    str r12, [sp, #384]
    add lr, sp, #188
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr r12, [sp, #384]
    ldr lr, [sp, #388]
    sub r12, r12, lr
    str r12, [sp, #392]
    add lr, sp, #192
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    ldr r12, [sp, #392]
    ldr lr, [sp, #396]
    sub r12, r12, lr
    str r12, [sp, #400]
    add lr, sp, #196
    ldr r12, [lr, #0]
    str r12, [sp, #404]
    ldr r12, [sp, #400]
    ldr lr, [sp, #404]
    sub r12, r12, lr
    str r12, [sp, #408]
    add lr, sp, #200
    ldr r12, [lr, #0]
    str r12, [sp, #412]
    ldr r12, [sp, #408]
    ldr lr, [sp, #412]
    sub r12, r12, lr
    str r12, [sp, #416]
    add lr, sp, #204
    ldr r12, [lr, #0]
    str r12, [sp, #420]
    ldr r12, [sp, #416]
    ldr lr, [sp, #420]
    add r12, r12, lr
    str r12, [sp, #424]
    add lr, sp, #208
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr r12, [sp, #424]
    ldr lr, [sp, #428]
    add r12, r12, lr
    str r12, [sp, #432]
    add lr, sp, #212
    ldr r12, [lr, #0]
    str r12, [sp, #436]
    ldr r12, [sp, #432]
    ldr lr, [sp, #436]
    add r12, r12, lr
    str r12, [sp, #440]
    add lr, sp, #216
    ldr r12, [lr, #0]
    str r12, [sp, #444]
    ldr r12, [sp, #440]
    ldr lr, [sp, #444]
    add r12, r12, lr
    str r12, [sp, #448]
    add lr, sp, #220
    ldr r12, [lr, #0]
    str r12, [sp, #452]
    ldr r12, [sp, #448]
    ldr lr, [sp, #452]
    add r12, r12, lr
    str r12, [sp, #456]
    add lr, sp, #224
    ldr r12, [lr, #0]
    str r12, [sp, #460]
    ldr r12, [sp, #456]
    ldr lr, [sp, #460]
    add r12, r12, lr
    str r12, [sp, #464]
    add lr, sp, #228
    ldr r12, [lr, #0]
    str r12, [sp, #468]
    ldr r12, [sp, #464]
    ldr lr, [sp, #468]
    add r12, r12, lr
    str r12, [sp, #472]
    add lr, sp, #232
    ldr r12, [lr, #0]
    str r12, [sp, #476]
    ldr r12, [sp, #472]
    ldr lr, [sp, #476]
    add r12, r12, lr
    str r12, [sp, #480]
    add lr, sp, #236
    ldr r12, [lr, #0]
    str r12, [sp, #484]
    ldr r12, [sp, #480]
    ldr lr, [sp, #484]
    add r12, r12, lr
    str r12, [sp, #488]
    ldr r0, [sp, #488]
    mov r12, #492
    add sp, sp, r12
    pop {pc}
.testParam32_post:
main:
.main_pre:
    push {lr}
    mov r12, #248
    sub sp, sp, r12
.main_entry:
    ldr lr, =#0
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#2
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+12
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#4
    adrl r11, .global_vars+16
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#5
    adrl r11, .global_vars+20
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#6
    adrl r11, .global_vars+24
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#7
    adrl r11, .global_vars+28
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#8
    adrl r11, .global_vars+32
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#9
    adrl r11, .global_vars+36
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    adrl r11, .global_vars+40
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    adrl r11, .global_vars+44
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#2
    adrl r11, .global_vars+48
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+52
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#4
    adrl r11, .global_vars+56
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#5
    adrl r11, .global_vars+60
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#6
    adrl r11, .global_vars+64
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#7
    adrl r11, .global_vars+68
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#8
    adrl r11, .global_vars+72
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#9
    adrl r11, .global_vars+76
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    adrl r11, .global_vars+80
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    adrl r11, .global_vars+84
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#2
    adrl r11, .global_vars+88
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+92
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#4
    adrl r11, .global_vars+96
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#5
    adrl r11, .global_vars+100
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#6
    adrl r11, .global_vars+104
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#7
    adrl r11, .global_vars+108
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#8
    adrl r11, .global_vars+112
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#9
    adrl r11, .global_vars+116
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    adrl r11, .global_vars+120
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    adrl r11, .global_vars+124
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#4
    adrl r11, .global_vars+128
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#5
    adrl r11, .global_vars+132
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#6
    adrl r11, .global_vars+136
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#7
    adrl r11, .global_vars+140
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#8
    adrl r11, .global_vars+144
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#9
    adrl r11, .global_vars+148
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    adrl r11, .global_vars+152
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#1
    adrl r11, .global_vars+156
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #0]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    adrl r11, .global_vars+16
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    adrl r11, .global_vars+20
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    adrl r11, .global_vars+24
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    adrl r11, .global_vars+28
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr r0, [sp, #0]
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    ldr r3, [sp, #12]
    ldr r12, [sp, #28]
    str r12, [sp, #-4]
    ldr r12, [sp, #24]
    str r12, [sp, #-8]
    ldr r12, [sp, #20]
    str r12, [sp, #-12]
    ldr r12, [sp, #16]
    str r12, [sp, #-16]
    mov r12, #16
    sub sp, sp, r12
    bl testParam8
    mov r12, #16
    add sp, sp, r12
    str r0, [sp, #32]
    ldr lr, [sp, #32]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r0, [sp, #36]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    adrl r11, .global_vars+128
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #40]
    adrl r11, .global_vars+132
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #44]
    adrl r11, .global_vars+136
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #48]
    adrl r11, .global_vars+140
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    adrl r11, .global_vars+144
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #56]
    adrl r11, .global_vars+148
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    adrl r11, .global_vars+152
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    adrl r11, .global_vars+156
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    adrl r11, .global_vars+32
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #72]
    adrl r11, .global_vars+36
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    adrl r11, .global_vars+40
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    adrl r11, .global_vars+44
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    adrl r11, .global_vars+48
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    adrl r11, .global_vars+52
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    adrl r11, .global_vars+56
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    adrl r11, .global_vars+60
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #40]
    ldr r1, [sp, #44]
    ldr r2, [sp, #48]
    ldr r3, [sp, #52]
    ldr r12, [sp, #100]
    str r12, [sp, #-4]
    ldr r12, [sp, #96]
    str r12, [sp, #-8]
    ldr r12, [sp, #92]
    str r12, [sp, #-12]
    ldr r12, [sp, #88]
    str r12, [sp, #-16]
    ldr r12, [sp, #84]
    str r12, [sp, #-20]
    ldr r12, [sp, #80]
    str r12, [sp, #-24]
    ldr r12, [sp, #76]
    str r12, [sp, #-28]
    ldr r12, [sp, #72]
    str r12, [sp, #-32]
    ldr r12, [sp, #68]
    str r12, [sp, #-36]
    ldr r12, [sp, #64]
    str r12, [sp, #-40]
    ldr r12, [sp, #60]
    str r12, [sp, #-44]
    ldr r12, [sp, #56]
    str r12, [sp, #-48]
    mov r12, #48
    sub sp, sp, r12
    bl testParam16
    mov r12, #48
    add sp, sp, r12
    str r0, [sp, #104]
    ldr lr, [sp, #104]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr r0, [sp, #108]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #112]
    adrl r11, .global_vars+4
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #120]
    adrl r11, .global_vars+12
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    adrl r11, .global_vars+16
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    adrl r11, .global_vars+20
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #132]
    adrl r11, .global_vars+24
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    adrl r11, .global_vars+28
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    adrl r11, .global_vars+32
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    adrl r11, .global_vars+36
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    adrl r11, .global_vars+40
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    adrl r11, .global_vars+44
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    adrl r11, .global_vars+48
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    adrl r11, .global_vars+52
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    adrl r11, .global_vars+56
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    adrl r11, .global_vars+60
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #172]
    adrl r11, .global_vars+64
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    adrl r11, .global_vars+68
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    adrl r11, .global_vars+72
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    adrl r11, .global_vars+76
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    adrl r11, .global_vars+80
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    adrl r11, .global_vars+84
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    adrl r11, .global_vars+88
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    adrl r11, .global_vars+92
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    adrl r11, .global_vars+96
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    adrl r11, .global_vars+100
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    adrl r11, .global_vars+104
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    adrl r11, .global_vars+108
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #220]
    adrl r11, .global_vars+112
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    adrl r11, .global_vars+116
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    adrl r11, .global_vars+120
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    adrl r11, .global_vars+124
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    ldr r0, [sp, #112]
    ldr r1, [sp, #116]
    ldr r2, [sp, #120]
    ldr r3, [sp, #124]
    ldr r12, [sp, #236]
    str r12, [sp, #-4]
    ldr r12, [sp, #232]
    str r12, [sp, #-8]
    ldr r12, [sp, #228]
    str r12, [sp, #-12]
    ldr r12, [sp, #224]
    str r12, [sp, #-16]
    ldr r12, [sp, #220]
    str r12, [sp, #-20]
    ldr r12, [sp, #216]
    str r12, [sp, #-24]
    ldr r12, [sp, #212]
    str r12, [sp, #-28]
    ldr r12, [sp, #208]
    str r12, [sp, #-32]
    ldr r12, [sp, #204]
    str r12, [sp, #-36]
    ldr r12, [sp, #200]
    str r12, [sp, #-40]
    ldr r12, [sp, #196]
    str r12, [sp, #-44]
    ldr r12, [sp, #192]
    str r12, [sp, #-48]
    ldr r12, [sp, #188]
    str r12, [sp, #-52]
    ldr r12, [sp, #184]
    str r12, [sp, #-56]
    ldr r12, [sp, #180]
    str r12, [sp, #-60]
    ldr r12, [sp, #176]
    str r12, [sp, #-64]
    ldr r12, [sp, #172]
    str r12, [sp, #-68]
    ldr r12, [sp, #168]
    str r12, [sp, #-72]
    ldr r12, [sp, #164]
    str r12, [sp, #-76]
    ldr r12, [sp, #160]
    str r12, [sp, #-80]
    ldr r12, [sp, #156]
    str r12, [sp, #-84]
    ldr r12, [sp, #152]
    str r12, [sp, #-88]
    ldr r12, [sp, #148]
    str r12, [sp, #-92]
    ldr r12, [sp, #144]
    str r12, [sp, #-96]
    ldr r12, [sp, #140]
    str r12, [sp, #-100]
    ldr r12, [sp, #136]
    str r12, [sp, #-104]
    ldr r12, [sp, #132]
    str r12, [sp, #-108]
    ldr r12, [sp, #128]
    str r12, [sp, #-112]
    mov r12, #112
    sub sp, sp, r12
    bl testParam32
    mov r12, #112
    add sp, sp, r12
    str r0, [sp, #240]
    ldr lr, [sp, #240]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #244]
    ldr r0, [sp, #244]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #248
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
a0:
    .long 0
a1:
    .long 0
a2:
    .long 0
a3:
    .long 0
a4:
    .long 0
a5:
    .long 0
a6:
    .long 0
a7:
    .long 0
a8:
    .long 0
a9:
    .long 0
a10:
    .long 0
a11:
    .long 0
a12:
    .long 0
a13:
    .long 0
a14:
    .long 0
a15:
    .long 0
a16:
    .long 0
a17:
    .long 0
a18:
    .long 0
a19:
    .long 0
a20:
    .long 0
a21:
    .long 0
a22:
    .long 0
a23:
    .long 0
a24:
    .long 0
a25:
    .long 0
a26:
    .long 0
a27:
    .long 0
a28:
    .long 0
a29:
    .long 0
a30:
    .long 0
a31:
    .long 0
a32:
    .long 0
a33:
    .long 0
a34:
    .long 0
a35:
    .long 0
a36:
    .long 0
a37:
    .long 0
a38:
    .long 0
a39:
    .long 0
