    .arch armv7-a
    .file ""
    .text
    .global mul
    .global main
    .syntax unified
    .arm
    .global M
    .global L
    .global N
.global_vars:
    .long M
    .long L
    .long N
mul:
.mul_pre:
    push {lr}
    mov r12, #960
    sub sp, sp, r12
    ldr r12, [sp, #964]
    str r12, [sp, #0]
    ldr r12, [sp, #968]
    str r12, [sp, #4]
    ldr r12, [sp, #972]
    str r12, [sp, #8]
    ldr r12, [sp, #976]
    str r12, [sp, #12]
    ldr r12, [sp, #980]
    str r12, [sp, #16]
.mul_entry:
    mov lr, r0
    add r12, sp, #20
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #24
    str lr, [r12, #0]
    mov lr, r2
    add r12, sp, #28
    str lr, [r12, #0]
    mov lr, r3
    add r12, sp, #32
    str lr, [r12, #0]
    ldr lr, [sp, #0]
    add r12, sp, #36
    str lr, [r12, #0]
    ldr lr, [sp, #4]
    add r12, sp, #40
    str lr, [r12, #0]
    ldr lr, [sp, #8]
    add r12, sp, #44
    str lr, [r12, #0]
    ldr lr, [sp, #12]
    add r12, sp, #48
    str lr, [r12, #0]
    ldr lr, [sp, #16]
    add r12, sp, #52
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #56
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #60]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #60]
    add r12, r12, lr
    str r12, [sp, #64]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #68]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #80]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #80]
    add r12, r12, lr
    str r12, [sp, #84]
    ldr lr, [sp, #84]
    ldr r12, [lr, #0]
    str r12, [sp, #88]
    ldr r12, [sp, #76]
    ldr lr, [sp, #88]
    mul r12, r12, lr
    str r12, [sp, #92]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #96]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #96]
    add r12, r12, lr
    str r12, [sp, #100]
    ldr lr, [sp, #100]
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #108]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #108]
    add r12, r12, lr
    str r12, [sp, #112]
    ldr lr, [sp, #112]
    ldr r12, [lr, #0]
    str r12, [sp, #116]
    ldr r12, [sp, #104]
    ldr lr, [sp, #116]
    mul r12, r12, lr
    str r12, [sp, #120]
    ldr r12, [sp, #92]
    ldr lr, [sp, #120]
    add r12, r12, lr
    str r12, [sp, #124]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #128]
    add r12, r12, lr
    str r12, [sp, #132]
    ldr lr, [sp, #132]
    ldr r12, [lr, #0]
    str r12, [sp, #136]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #140]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #140]
    add r12, r12, lr
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    ldr r12, [lr, #0]
    str r12, [sp, #148]
    ldr r12, [sp, #136]
    ldr lr, [sp, #148]
    mul r12, r12, lr
    str r12, [sp, #152]
    ldr r12, [sp, #124]
    ldr lr, [sp, #152]
    add r12, r12, lr
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    ldr r12, [sp, #64]
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #160]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #160]
    add r12, r12, lr
    str r12, [sp, #164]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #168]
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #180]
    add r12, r12, lr
    str r12, [sp, #184]
    ldr lr, [sp, #184]
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr r12, [sp, #176]
    ldr lr, [sp, #188]
    mul r12, r12, lr
    str r12, [sp, #192]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #196]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #196]
    add r12, r12, lr
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #208]
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #204]
    ldr lr, [sp, #216]
    mul r12, r12, lr
    str r12, [sp, #220]
    ldr r12, [sp, #192]
    ldr lr, [sp, #220]
    add r12, r12, lr
    str r12, [sp, #224]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #228]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #228]
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, [sp, #232]
    ldr r12, [lr, #0]
    str r12, [sp, #236]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #240]
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr r12, [sp, #236]
    ldr lr, [sp, #248]
    mul r12, r12, lr
    str r12, [sp, #252]
    ldr r12, [sp, #224]
    ldr lr, [sp, #252]
    add r12, r12, lr
    str r12, [sp, #256]
    ldr lr, [sp, #256]
    ldr r12, [sp, #164]
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #260]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #260]
    add r12, r12, lr
    str r12, [sp, #264]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #268]
    add r12, r12, lr
    str r12, [sp, #272]
    ldr lr, [sp, #272]
    ldr r12, [lr, #0]
    str r12, [sp, #276]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #280]
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, [sp, #284]
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr r12, [sp, #276]
    ldr lr, [sp, #288]
    mul r12, r12, lr
    str r12, [sp, #292]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #296]
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #308]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #308]
    add r12, r12, lr
    str r12, [sp, #312]
    ldr lr, [sp, #312]
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    ldr r12, [sp, #304]
    ldr lr, [sp, #316]
    mul r12, r12, lr
    str r12, [sp, #320]
    ldr r12, [sp, #292]
    ldr lr, [sp, #320]
    add r12, r12, lr
    str r12, [sp, #324]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #328]
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #340]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #340]
    add r12, r12, lr
    str r12, [sp, #344]
    ldr lr, [sp, #344]
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r12, [sp, #336]
    ldr lr, [sp, #348]
    mul r12, r12, lr
    str r12, [sp, #352]
    ldr r12, [sp, #324]
    ldr lr, [sp, #352]
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    ldr r12, [sp, #264]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #360]
    add r12, r12, lr
    str r12, [sp, #364]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #368]
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #380]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #380]
    add r12, r12, lr
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    ldr r12, [lr, #0]
    str r12, [sp, #388]
    ldr r12, [sp, #376]
    ldr lr, [sp, #388]
    mul r12, r12, lr
    str r12, [sp, #392]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #396]
    add r12, r12, lr
    str r12, [sp, #400]
    ldr lr, [sp, #400]
    ldr r12, [lr, #0]
    str r12, [sp, #404]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #408]
    add r12, r12, lr
    str r12, [sp, #412]
    ldr lr, [sp, #412]
    ldr r12, [lr, #0]
    str r12, [sp, #416]
    ldr r12, [sp, #404]
    ldr lr, [sp, #416]
    mul r12, r12, lr
    str r12, [sp, #420]
    ldr r12, [sp, #392]
    ldr lr, [sp, #420]
    add r12, r12, lr
    str r12, [sp, #424]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #428]
    add r12, r12, lr
    str r12, [sp, #432]
    ldr lr, [sp, #432]
    ldr r12, [lr, #0]
    str r12, [sp, #436]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #440]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #440]
    add r12, r12, lr
    str r12, [sp, #444]
    ldr lr, [sp, #444]
    ldr r12, [lr, #0]
    str r12, [sp, #448]
    ldr r12, [sp, #436]
    ldr lr, [sp, #448]
    mul r12, r12, lr
    str r12, [sp, #452]
    ldr r12, [sp, #424]
    ldr lr, [sp, #452]
    add r12, r12, lr
    str r12, [sp, #456]
    ldr lr, [sp, #456]
    ldr r12, [sp, #364]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #460]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #460]
    add r12, r12, lr
    str r12, [sp, #464]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #468]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #468]
    add r12, r12, lr
    str r12, [sp, #472]
    ldr lr, [sp, #472]
    ldr r12, [lr, #0]
    str r12, [sp, #476]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #480]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #480]
    add r12, r12, lr
    str r12, [sp, #484]
    ldr lr, [sp, #484]
    ldr r12, [lr, #0]
    str r12, [sp, #488]
    ldr r12, [sp, #476]
    ldr lr, [sp, #488]
    mul r12, r12, lr
    str r12, [sp, #492]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #496]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #496]
    add r12, r12, lr
    str r12, [sp, #500]
    ldr lr, [sp, #500]
    ldr r12, [lr, #0]
    str r12, [sp, #504]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #508]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #508]
    add r12, r12, lr
    str r12, [sp, #512]
    ldr lr, [sp, #512]
    ldr r12, [lr, #0]
    str r12, [sp, #516]
    ldr r12, [sp, #504]
    ldr lr, [sp, #516]
    mul r12, r12, lr
    str r12, [sp, #520]
    ldr r12, [sp, #492]
    ldr lr, [sp, #520]
    add r12, r12, lr
    str r12, [sp, #524]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #528]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #528]
    add r12, r12, lr
    str r12, [sp, #532]
    ldr lr, [sp, #532]
    ldr r12, [lr, #0]
    str r12, [sp, #536]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #540]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #540]
    add r12, r12, lr
    str r12, [sp, #544]
    ldr lr, [sp, #544]
    ldr r12, [lr, #0]
    str r12, [sp, #548]
    ldr r12, [sp, #536]
    ldr lr, [sp, #548]
    mul r12, r12, lr
    str r12, [sp, #552]
    ldr r12, [sp, #524]
    ldr lr, [sp, #552]
    add r12, r12, lr
    str r12, [sp, #556]
    ldr lr, [sp, #556]
    ldr r12, [sp, #464]
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #560]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #560]
    add r12, r12, lr
    str r12, [sp, #564]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #568]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #568]
    add r12, r12, lr
    str r12, [sp, #572]
    ldr lr, [sp, #572]
    ldr r12, [lr, #0]
    str r12, [sp, #576]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #580]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #580]
    add r12, r12, lr
    str r12, [sp, #584]
    ldr lr, [sp, #584]
    ldr r12, [lr, #0]
    str r12, [sp, #588]
    ldr r12, [sp, #576]
    ldr lr, [sp, #588]
    mul r12, r12, lr
    str r12, [sp, #592]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #596]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #596]
    add r12, r12, lr
    str r12, [sp, #600]
    ldr lr, [sp, #600]
    ldr r12, [lr, #0]
    str r12, [sp, #604]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #608]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #608]
    add r12, r12, lr
    str r12, [sp, #612]
    ldr lr, [sp, #612]
    ldr r12, [lr, #0]
    str r12, [sp, #616]
    ldr r12, [sp, #604]
    ldr lr, [sp, #616]
    mul r12, r12, lr
    str r12, [sp, #620]
    ldr r12, [sp, #592]
    ldr lr, [sp, #620]
    add r12, r12, lr
    str r12, [sp, #624]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #628]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #628]
    add r12, r12, lr
    str r12, [sp, #632]
    ldr lr, [sp, #632]
    ldr r12, [lr, #0]
    str r12, [sp, #636]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #640]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #640]
    add r12, r12, lr
    str r12, [sp, #644]
    ldr lr, [sp, #644]
    ldr r12, [lr, #0]
    str r12, [sp, #648]
    ldr r12, [sp, #636]
    ldr lr, [sp, #648]
    mul r12, r12, lr
    str r12, [sp, #652]
    ldr r12, [sp, #624]
    ldr lr, [sp, #652]
    add r12, r12, lr
    str r12, [sp, #656]
    ldr lr, [sp, #656]
    ldr r12, [sp, #564]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #660]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #660]
    add r12, r12, lr
    str r12, [sp, #664]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #668]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #668]
    add r12, r12, lr
    str r12, [sp, #672]
    ldr lr, [sp, #672]
    ldr r12, [lr, #0]
    str r12, [sp, #676]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #680]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #680]
    add r12, r12, lr
    str r12, [sp, #684]
    ldr lr, [sp, #684]
    ldr r12, [lr, #0]
    str r12, [sp, #688]
    ldr r12, [sp, #676]
    ldr lr, [sp, #688]
    mul r12, r12, lr
    str r12, [sp, #692]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #696]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #696]
    add r12, r12, lr
    str r12, [sp, #700]
    ldr lr, [sp, #700]
    ldr r12, [lr, #0]
    str r12, [sp, #704]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #708]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #708]
    add r12, r12, lr
    str r12, [sp, #712]
    ldr lr, [sp, #712]
    ldr r12, [lr, #0]
    str r12, [sp, #716]
    ldr r12, [sp, #704]
    ldr lr, [sp, #716]
    mul r12, r12, lr
    str r12, [sp, #720]
    ldr r12, [sp, #692]
    ldr lr, [sp, #720]
    add r12, r12, lr
    str r12, [sp, #724]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #728]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #728]
    add r12, r12, lr
    str r12, [sp, #732]
    ldr lr, [sp, #732]
    ldr r12, [lr, #0]
    str r12, [sp, #736]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #740]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #740]
    add r12, r12, lr
    str r12, [sp, #744]
    ldr lr, [sp, #744]
    ldr r12, [lr, #0]
    str r12, [sp, #748]
    ldr r12, [sp, #736]
    ldr lr, [sp, #748]
    mul r12, r12, lr
    str r12, [sp, #752]
    ldr r12, [sp, #724]
    ldr lr, [sp, #752]
    add r12, r12, lr
    str r12, [sp, #756]
    ldr lr, [sp, #756]
    ldr r12, [sp, #664]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #760]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #760]
    add r12, r12, lr
    str r12, [sp, #764]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #768]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #768]
    add r12, r12, lr
    str r12, [sp, #772]
    ldr lr, [sp, #772]
    ldr r12, [lr, #0]
    str r12, [sp, #776]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #780]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #780]
    add r12, r12, lr
    str r12, [sp, #784]
    ldr lr, [sp, #784]
    ldr r12, [lr, #0]
    str r12, [sp, #788]
    ldr r12, [sp, #776]
    ldr lr, [sp, #788]
    mul r12, r12, lr
    str r12, [sp, #792]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #796]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #796]
    add r12, r12, lr
    str r12, [sp, #800]
    ldr lr, [sp, #800]
    ldr r12, [lr, #0]
    str r12, [sp, #804]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #808]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #808]
    add r12, r12, lr
    str r12, [sp, #812]
    ldr lr, [sp, #812]
    ldr r12, [lr, #0]
    str r12, [sp, #816]
    ldr r12, [sp, #804]
    ldr lr, [sp, #816]
    mul r12, r12, lr
    str r12, [sp, #820]
    ldr r12, [sp, #792]
    ldr lr, [sp, #820]
    add r12, r12, lr
    str r12, [sp, #824]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #828]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #828]
    add r12, r12, lr
    str r12, [sp, #832]
    ldr lr, [sp, #832]
    ldr r12, [lr, #0]
    str r12, [sp, #836]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #840]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #840]
    add r12, r12, lr
    str r12, [sp, #844]
    ldr lr, [sp, #844]
    ldr r12, [lr, #0]
    str r12, [sp, #848]
    ldr r12, [sp, #836]
    ldr lr, [sp, #848]
    mul r12, r12, lr
    str r12, [sp, #852]
    ldr r12, [sp, #824]
    ldr lr, [sp, #852]
    add r12, r12, lr
    str r12, [sp, #856]
    ldr lr, [sp, #856]
    ldr r12, [sp, #764]
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #860]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #860]
    add r12, r12, lr
    str r12, [sp, #864]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #868]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #868]
    add r12, r12, lr
    str r12, [sp, #872]
    ldr lr, [sp, #872]
    ldr r12, [lr, #0]
    str r12, [sp, #876]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #880]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #880]
    add r12, r12, lr
    str r12, [sp, #884]
    ldr lr, [sp, #884]
    ldr r12, [lr, #0]
    str r12, [sp, #888]
    ldr r12, [sp, #876]
    ldr lr, [sp, #888]
    mul r12, r12, lr
    str r12, [sp, #892]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #896]
    ldr lr, =#1
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #896]
    add r12, r12, lr
    str r12, [sp, #900]
    ldr lr, [sp, #900]
    ldr r12, [lr, #0]
    str r12, [sp, #904]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #908]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #908]
    add r12, r12, lr
    str r12, [sp, #912]
    ldr lr, [sp, #912]
    ldr r12, [lr, #0]
    str r12, [sp, #916]
    ldr r12, [sp, #904]
    ldr lr, [sp, #916]
    mul r12, r12, lr
    str r12, [sp, #920]
    ldr r12, [sp, #892]
    ldr lr, [sp, #920]
    add r12, r12, lr
    str r12, [sp, #924]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #928]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #928]
    add r12, r12, lr
    str r12, [sp, #932]
    ldr lr, [sp, #932]
    ldr r12, [lr, #0]
    str r12, [sp, #936]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #940]
    ldr lr, =#2
    mov r12, #4
    mul lr, lr, r12
    ldr r12, [sp, #940]
    add r12, r12, lr
    str r12, [sp, #944]
    ldr lr, [sp, #944]
    ldr r12, [lr, #0]
    str r12, [sp, #948]
    ldr r12, [sp, #936]
    ldr lr, [sp, #948]
    mul r12, r12, lr
    str r12, [sp, #952]
    ldr r12, [sp, #924]
    ldr lr, [sp, #952]
    add r12, r12, lr
    str r12, [sp, #956]
    ldr lr, [sp, #956]
    ldr r12, [sp, #864]
    str lr, [r12, #0]
    ldr r0, =#0
    mov r12, #960
    add sp, sp, r12
    pop {pc}
.mul_post:
main:
.main_pre:
    push {lr}
    mov r12, #412
    sub sp, sp, r12
.main_entry:
    ldr lr, =#3
    adrl r11, .global_vars+8
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#3
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label10:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #124]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #128]
    ldr r12, [sp, #124]
    ldr lr, [sp, #128]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .main_label16+0
    b .main_label37+0
.main_label16:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #144]
    ldr lr, [sp, #144]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #148]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #152]
    ldr lr, [sp, #152]
    ldr r12, [sp, #148]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #156]
    ldr lr, [sp, #156]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #160]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #164]
    ldr lr, [sp, #164]
    ldr r12, [sp, #160]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr lr, [sp, #168]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #172]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr lr, [sp, #176]
    ldr r12, [sp, #172]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #184]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    ldr r12, [sp, #184]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr lr, [sp, #192]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #196]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr lr, [sp, #200]
    ldr r12, [sp, #196]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #208]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    ldr r12, [sp, #208]
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, [sp, #216]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label10+0
.main_label37:
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #0
    add r12, r12, lr
    str r12, [sp, #224]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #12
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #24
    add r12, r12, lr
    str r12, [sp, #232]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #36
    add r12, r12, lr
    str r12, [sp, #236]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #48
    add r12, r12, lr
    str r12, [sp, #240]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #60
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #248]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #252]
    ldr lr, =#0
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #256]
    ldr r0, [sp, #224]
    ldr r1, [sp, #228]
    ldr r2, [sp, #232]
    ldr r3, [sp, #236]
    ldr r12, [sp, #256]
    str r12, [sp, #-4]
    ldr r12, [sp, #252]
    str r12, [sp, #-8]
    ldr r12, [sp, #248]
    str r12, [sp, #-12]
    ldr r12, [sp, #244]
    str r12, [sp, #-16]
    ldr r12, [sp, #240]
    str r12, [sp, #-20]
    mov r12, #20
    sub sp, sp, r12
    bl mul
    mov r12, #20
    add sp, sp, r12
    str r0, [sp, #260]
    ldr lr, [sp, #260]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label49+0
.main_label49:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #268]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, [sp, #268]
    ldr lr, [sp, #272]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
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
    bne .main_label55+0
    b .main_label62+0
.main_label55:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr lr, [sp, #288]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #72
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr lr, [sp, #296]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #300]
    ldr r0, [sp, #300]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, [sp, #304]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label49+0
.main_label62:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    ldr r0, [sp, #312]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    b .main_label64+0
.main_label64:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #316]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, [sp, #316]
    ldr lr, [sp, #320]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #324]
    ldr r12, [sp, #324]
    str r12, [sp, #328]
    ldr r12, [sp, #328]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #332]
    ldr r12, [sp, #332]
    cmp r12, #0
    bne .main_label70+0
    b .main_label77+0
.main_label70:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr lr, [sp, #336]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #96
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    ldr lr, [sp, #344]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #348]
    ldr r0, [sp, #348]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, [sp, #352]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label64+0
.main_label77:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    ldr lr, =#0
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr r0, [sp, #360]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    b .main_label79+0
.main_label79:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #364]
    adrl r11, .global_vars+8
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr r12, [sp, #364]
    ldr lr, [sp, #368]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #372]
    ldr r12, [sp, #372]
    str r12, [sp, #376]
    ldr r12, [sp, #376]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #380]
    ldr r12, [sp, #380]
    cmp r12, #0
    bne .main_label85+0
    b .main_label92+0
.main_label85:
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #384]
    ldr lr, [sp, #384]
    mov r12, #4
    mul lr, lr, r12
    add r12, sp, #108
    add r12, r12, lr
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr lr, [sp, #392]
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #396]
    ldr r0, [sp, #396]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #400]
    ldr r12, [sp, #400]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #404]
    ldr lr, [sp, #404]
    add r12, sp, #120
    str lr, [r12, #0]
    b .main_label79+0
.main_label92:
    ldr lr, =#10
    add r12, sp, #264
    str lr, [r12, #0]
    add lr, sp, #264
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr r0, [sp, #408]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    ldr r0, =#0
    mov r12, #412
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
M:
    .long 0
L:
    .long 0
N:
    .long 0
