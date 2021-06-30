    .arch armv7-a
    .file ""
    .text
    .global func
    .global main
    .syntax unified
    .arm
.global_vars:
func:
.func_pre:
    push {lr}
    mov r12, #1020
    sub sp, sp, r12
.func_entry:
    mov lr, r0
    add r12, sp, #0
    str lr, [r12, #0]
    mov lr, r1
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #12]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #16]
    ldr r12, [sp, #12]
    ldr lr, [sp, #16]
    add r12, r12, lr
    str r12, [sp, #20]
    ldr lr, [sp, #20]
    add r12, sp, #8
    str lr, [r12, #0]
    ldr lr, =#1
    add r12, sp, #24
    str lr, [r12, #0]
    ldr lr, =#2
    add r12, sp, #28
    str lr, [r12, #0]
    ldr lr, =#3
    add r12, sp, #32
    str lr, [r12, #0]
    ldr lr, =#4
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #168]
    ldr r12, =#1
    ldr lr, [sp, #168]
    add r12, r12, lr
    str r12, [sp, #172]
    ldr lr, [sp, #172]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #176]
    ldr r12, =#2
    ldr lr, [sp, #176]
    add r12, r12, lr
    str r12, [sp, #180]
    ldr lr, [sp, #180]
    add r12, sp, #44
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #184]
    ldr r12, =#3
    ldr lr, [sp, #184]
    add r12, r12, lr
    str r12, [sp, #188]
    ldr lr, [sp, #188]
    add r12, sp, #48
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #192]
    ldr r12, =#4
    ldr lr, [sp, #192]
    add r12, r12, lr
    str r12, [sp, #196]
    ldr lr, [sp, #196]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #200]
    ldr r12, =#1
    ldr lr, [sp, #200]
    add r12, r12, lr
    str r12, [sp, #204]
    ldr lr, [sp, #204]
    add r12, sp, #56
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #208]
    ldr r12, =#2
    ldr lr, [sp, #208]
    add r12, r12, lr
    str r12, [sp, #212]
    ldr lr, [sp, #212]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #216]
    ldr r12, =#3
    ldr lr, [sp, #216]
    add r12, r12, lr
    str r12, [sp, #220]
    ldr lr, [sp, #220]
    add r12, sp, #64
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #224]
    ldr r12, =#4
    ldr lr, [sp, #224]
    add r12, r12, lr
    str r12, [sp, #228]
    ldr lr, [sp, #228]
    add r12, sp, #68
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #232]
    ldr r12, =#1
    ldr lr, [sp, #232]
    add r12, r12, lr
    str r12, [sp, #236]
    ldr lr, [sp, #236]
    add r12, sp, #72
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #240]
    ldr r12, =#2
    ldr lr, [sp, #240]
    add r12, r12, lr
    str r12, [sp, #244]
    ldr lr, [sp, #244]
    add r12, sp, #76
    str lr, [r12, #0]
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #248]
    ldr r12, =#3
    ldr lr, [sp, #248]
    add r12, r12, lr
    str r12, [sp, #252]
    ldr lr, [sp, #252]
    add r12, sp, #80
    str lr, [r12, #0]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #256]
    ldr r12, =#4
    ldr lr, [sp, #256]
    add r12, r12, lr
    str r12, [sp, #260]
    ldr lr, [sp, #260]
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #264]
    ldr r12, =#1
    ldr lr, [sp, #264]
    add r12, r12, lr
    str r12, [sp, #268]
    ldr lr, [sp, #268]
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #272]
    ldr r12, =#2
    ldr lr, [sp, #272]
    add r12, r12, lr
    str r12, [sp, #276]
    ldr lr, [sp, #276]
    add r12, sp, #92
    str lr, [r12, #0]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #280]
    ldr r12, =#3
    ldr lr, [sp, #280]
    add r12, r12, lr
    str r12, [sp, #284]
    ldr lr, [sp, #284]
    add r12, sp, #96
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #288]
    ldr r12, =#4
    ldr lr, [sp, #288]
    add r12, r12, lr
    str r12, [sp, #292]
    ldr lr, [sp, #292]
    add r12, sp, #100
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #296]
    ldr r12, =#1
    ldr lr, [sp, #296]
    add r12, r12, lr
    str r12, [sp, #300]
    ldr lr, [sp, #300]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #304]
    ldr r12, =#2
    ldr lr, [sp, #304]
    add r12, r12, lr
    str r12, [sp, #308]
    ldr lr, [sp, #308]
    add r12, sp, #108
    str lr, [r12, #0]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #312]
    ldr r12, =#3
    ldr lr, [sp, #312]
    add r12, r12, lr
    str r12, [sp, #316]
    ldr lr, [sp, #316]
    add r12, sp, #112
    str lr, [r12, #0]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #320]
    ldr r12, =#4
    ldr lr, [sp, #320]
    add r12, r12, lr
    str r12, [sp, #324]
    ldr lr, [sp, #324]
    add r12, sp, #116
    str lr, [r12, #0]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #328]
    ldr r12, =#1
    ldr lr, [sp, #328]
    add r12, r12, lr
    str r12, [sp, #332]
    ldr lr, [sp, #332]
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #336]
    ldr r12, =#2
    ldr lr, [sp, #336]
    add r12, r12, lr
    str r12, [sp, #340]
    ldr lr, [sp, #340]
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #344]
    ldr r12, =#3
    ldr lr, [sp, #344]
    add r12, r12, lr
    str r12, [sp, #348]
    ldr lr, [sp, #348]
    add r12, sp, #128
    str lr, [r12, #0]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #352]
    ldr r12, =#4
    ldr lr, [sp, #352]
    add r12, r12, lr
    str r12, [sp, #356]
    ldr lr, [sp, #356]
    add r12, sp, #132
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #360]
    ldr r12, =#1
    ldr lr, [sp, #360]
    add r12, r12, lr
    str r12, [sp, #364]
    ldr lr, [sp, #364]
    add r12, sp, #136
    str lr, [r12, #0]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #368]
    ldr r12, =#2
    ldr lr, [sp, #368]
    add r12, r12, lr
    str r12, [sp, #372]
    ldr lr, [sp, #372]
    add r12, sp, #140
    str lr, [r12, #0]
    add lr, sp, #128
    ldr r12, [lr, #0]
    str r12, [sp, #376]
    ldr r12, =#3
    ldr lr, [sp, #376]
    add r12, r12, lr
    str r12, [sp, #380]
    ldr lr, [sp, #380]
    add r12, sp, #144
    str lr, [r12, #0]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #384]
    ldr r12, =#4
    ldr lr, [sp, #384]
    add r12, r12, lr
    str r12, [sp, #388]
    ldr lr, [sp, #388]
    add r12, sp, #148
    str lr, [r12, #0]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #392]
    ldr r12, =#1
    ldr lr, [sp, #392]
    add r12, r12, lr
    str r12, [sp, #396]
    ldr lr, [sp, #396]
    add r12, sp, #152
    str lr, [r12, #0]
    add lr, sp, #140
    ldr r12, [lr, #0]
    str r12, [sp, #400]
    ldr r12, =#2
    ldr lr, [sp, #400]
    add r12, r12, lr
    str r12, [sp, #404]
    ldr lr, [sp, #404]
    add r12, sp, #156
    str lr, [r12, #0]
    add lr, sp, #144
    ldr r12, [lr, #0]
    str r12, [sp, #408]
    ldr r12, =#3
    ldr lr, [sp, #408]
    add r12, r12, lr
    str r12, [sp, #412]
    ldr lr, [sp, #412]
    add r12, sp, #160
    str lr, [r12, #0]
    add lr, sp, #148
    ldr r12, [lr, #0]
    str r12, [sp, #416]
    ldr r12, =#4
    ldr lr, [sp, #416]
    add r12, r12, lr
    str r12, [sp, #420]
    ldr lr, [sp, #420]
    add r12, sp, #164
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #424]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #428]
    ldr r12, [sp, #424]
    ldr lr, [sp, #428]
    sub r12, r12, lr
    str r12, [sp, #432]
    ldr r12, [sp, #432]
    ldr lr, =#10
    add r12, r12, lr
    str r12, [sp, #436]
    ldr lr, [sp, #436]
    add r12, sp, #8
    str lr, [r12, #0]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #440]
    ldr r12, =#1
    ldr lr, [sp, #440]
    add r12, r12, lr
    str r12, [sp, #444]
    ldr lr, [sp, #444]
    add r12, sp, #152
    str lr, [r12, #0]
    add lr, sp, #140
    ldr r12, [lr, #0]
    str r12, [sp, #448]
    ldr r12, =#2
    ldr lr, [sp, #448]
    add r12, r12, lr
    str r12, [sp, #452]
    ldr lr, [sp, #452]
    add r12, sp, #156
    str lr, [r12, #0]
    add lr, sp, #144
    ldr r12, [lr, #0]
    str r12, [sp, #456]
    ldr r12, =#3
    ldr lr, [sp, #456]
    add r12, r12, lr
    str r12, [sp, #460]
    ldr lr, [sp, #460]
    add r12, sp, #160
    str lr, [r12, #0]
    add lr, sp, #148
    ldr r12, [lr, #0]
    str r12, [sp, #464]
    ldr r12, =#4
    ldr lr, [sp, #464]
    add r12, r12, lr
    str r12, [sp, #468]
    ldr lr, [sp, #468]
    add r12, sp, #164
    str lr, [r12, #0]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #472]
    ldr r12, =#1
    ldr lr, [sp, #472]
    add r12, r12, lr
    str r12, [sp, #476]
    ldr lr, [sp, #476]
    add r12, sp, #136
    str lr, [r12, #0]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #480]
    ldr r12, =#2
    ldr lr, [sp, #480]
    add r12, r12, lr
    str r12, [sp, #484]
    ldr lr, [sp, #484]
    add r12, sp, #140
    str lr, [r12, #0]
    add lr, sp, #128
    ldr r12, [lr, #0]
    str r12, [sp, #488]
    ldr r12, =#3
    ldr lr, [sp, #488]
    add r12, r12, lr
    str r12, [sp, #492]
    ldr lr, [sp, #492]
    add r12, sp, #144
    str lr, [r12, #0]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #496]
    ldr r12, =#4
    ldr lr, [sp, #496]
    add r12, r12, lr
    str r12, [sp, #500]
    ldr lr, [sp, #500]
    add r12, sp, #148
    str lr, [r12, #0]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #504]
    ldr r12, =#1
    ldr lr, [sp, #504]
    add r12, r12, lr
    str r12, [sp, #508]
    ldr lr, [sp, #508]
    add r12, sp, #120
    str lr, [r12, #0]
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #512]
    ldr r12, =#2
    ldr lr, [sp, #512]
    add r12, r12, lr
    str r12, [sp, #516]
    ldr lr, [sp, #516]
    add r12, sp, #124
    str lr, [r12, #0]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #520]
    ldr r12, =#3
    ldr lr, [sp, #520]
    add r12, r12, lr
    str r12, [sp, #524]
    ldr lr, [sp, #524]
    add r12, sp, #128
    str lr, [r12, #0]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #528]
    ldr r12, =#4
    ldr lr, [sp, #528]
    add r12, r12, lr
    str r12, [sp, #532]
    ldr lr, [sp, #532]
    add r12, sp, #132
    str lr, [r12, #0]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #536]
    ldr r12, =#1
    ldr lr, [sp, #536]
    add r12, r12, lr
    str r12, [sp, #540]
    ldr lr, [sp, #540]
    add r12, sp, #104
    str lr, [r12, #0]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #544]
    ldr r12, =#2
    ldr lr, [sp, #544]
    add r12, r12, lr
    str r12, [sp, #548]
    ldr lr, [sp, #548]
    add r12, sp, #108
    str lr, [r12, #0]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #552]
    ldr r12, =#3
    ldr lr, [sp, #552]
    add r12, r12, lr
    str r12, [sp, #556]
    ldr lr, [sp, #556]
    add r12, sp, #112
    str lr, [r12, #0]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #560]
    ldr r12, =#4
    ldr lr, [sp, #560]
    add r12, r12, lr
    str r12, [sp, #564]
    ldr lr, [sp, #564]
    add r12, sp, #116
    str lr, [r12, #0]
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #568]
    ldr r12, =#1
    ldr lr, [sp, #568]
    add r12, r12, lr
    str r12, [sp, #572]
    ldr lr, [sp, #572]
    add r12, sp, #88
    str lr, [r12, #0]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #576]
    ldr r12, =#2
    ldr lr, [sp, #576]
    add r12, r12, lr
    str r12, [sp, #580]
    ldr lr, [sp, #580]
    add r12, sp, #92
    str lr, [r12, #0]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #584]
    ldr r12, =#3
    ldr lr, [sp, #584]
    add r12, r12, lr
    str r12, [sp, #588]
    ldr lr, [sp, #588]
    add r12, sp, #96
    str lr, [r12, #0]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #592]
    ldr r12, =#4
    ldr lr, [sp, #592]
    add r12, r12, lr
    str r12, [sp, #596]
    ldr lr, [sp, #596]
    add r12, sp, #100
    str lr, [r12, #0]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #600]
    ldr r12, =#1
    ldr lr, [sp, #600]
    add r12, r12, lr
    str r12, [sp, #604]
    ldr lr, [sp, #604]
    add r12, sp, #72
    str lr, [r12, #0]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #608]
    ldr r12, =#2
    ldr lr, [sp, #608]
    add r12, r12, lr
    str r12, [sp, #612]
    ldr lr, [sp, #612]
    add r12, sp, #76
    str lr, [r12, #0]
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #616]
    ldr r12, =#3
    ldr lr, [sp, #616]
    add r12, r12, lr
    str r12, [sp, #620]
    ldr lr, [sp, #620]
    add r12, sp, #80
    str lr, [r12, #0]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #624]
    ldr r12, =#4
    ldr lr, [sp, #624]
    add r12, r12, lr
    str r12, [sp, #628]
    ldr lr, [sp, #628]
    add r12, sp, #84
    str lr, [r12, #0]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #632]
    ldr r12, =#1
    ldr lr, [sp, #632]
    add r12, r12, lr
    str r12, [sp, #636]
    ldr lr, [sp, #636]
    add r12, sp, #56
    str lr, [r12, #0]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #640]
    ldr r12, =#2
    ldr lr, [sp, #640]
    add r12, r12, lr
    str r12, [sp, #644]
    ldr lr, [sp, #644]
    add r12, sp, #60
    str lr, [r12, #0]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #648]
    ldr r12, =#3
    ldr lr, [sp, #648]
    add r12, r12, lr
    str r12, [sp, #652]
    ldr lr, [sp, #652]
    add r12, sp, #64
    str lr, [r12, #0]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #656]
    ldr r12, =#4
    ldr lr, [sp, #656]
    add r12, r12, lr
    str r12, [sp, #660]
    ldr lr, [sp, #660]
    add r12, sp, #68
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #664]
    ldr r12, =#1
    ldr lr, [sp, #664]
    add r12, r12, lr
    str r12, [sp, #668]
    ldr lr, [sp, #668]
    add r12, sp, #40
    str lr, [r12, #0]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #672]
    ldr r12, =#2
    ldr lr, [sp, #672]
    add r12, r12, lr
    str r12, [sp, #676]
    ldr lr, [sp, #676]
    add r12, sp, #44
    str lr, [r12, #0]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #680]
    ldr r12, =#3
    ldr lr, [sp, #680]
    add r12, r12, lr
    str r12, [sp, #684]
    ldr lr, [sp, #684]
    add r12, sp, #48
    str lr, [r12, #0]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #688]
    ldr r12, =#4
    ldr lr, [sp, #688]
    add r12, r12, lr
    str r12, [sp, #692]
    ldr lr, [sp, #692]
    add r12, sp, #52
    str lr, [r12, #0]
    add lr, sp, #152
    ldr r12, [lr, #0]
    str r12, [sp, #696]
    ldr r12, =#1
    ldr lr, [sp, #696]
    add r12, r12, lr
    str r12, [sp, #700]
    ldr lr, [sp, #700]
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #156
    ldr r12, [lr, #0]
    str r12, [sp, #704]
    ldr r12, =#2
    ldr lr, [sp, #704]
    add r12, r12, lr
    str r12, [sp, #708]
    ldr lr, [sp, #708]
    add r12, sp, #28
    str lr, [r12, #0]
    add lr, sp, #160
    ldr r12, [lr, #0]
    str r12, [sp, #712]
    ldr r12, =#3
    ldr lr, [sp, #712]
    add r12, r12, lr
    str r12, [sp, #716]
    ldr lr, [sp, #716]
    add r12, sp, #32
    str lr, [r12, #0]
    add lr, sp, #164
    ldr r12, [lr, #0]
    str r12, [sp, #720]
    ldr r12, =#4
    ldr lr, [sp, #720]
    add r12, r12, lr
    str r12, [sp, #724]
    ldr lr, [sp, #724]
    add r12, sp, #36
    str lr, [r12, #0]
    add lr, sp, #8
    ldr r12, [lr, #0]
    str r12, [sp, #728]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #732]
    ldr r12, [sp, #728]
    ldr lr, [sp, #732]
    add r12, r12, lr
    str r12, [sp, #736]
    add lr, sp, #28
    ldr r12, [lr, #0]
    str r12, [sp, #740]
    ldr r12, [sp, #736]
    ldr lr, [sp, #740]
    add r12, r12, lr
    str r12, [sp, #744]
    add lr, sp, #32
    ldr r12, [lr, #0]
    str r12, [sp, #748]
    ldr r12, [sp, #744]
    ldr lr, [sp, #748]
    add r12, r12, lr
    str r12, [sp, #752]
    add lr, sp, #36
    ldr r12, [lr, #0]
    str r12, [sp, #756]
    ldr r12, [sp, #752]
    ldr lr, [sp, #756]
    add r12, r12, lr
    str r12, [sp, #760]
    add lr, sp, #40
    ldr r12, [lr, #0]
    str r12, [sp, #764]
    ldr r12, [sp, #760]
    ldr lr, [sp, #764]
    sub r12, r12, lr
    str r12, [sp, #768]
    add lr, sp, #44
    ldr r12, [lr, #0]
    str r12, [sp, #772]
    ldr r12, [sp, #768]
    ldr lr, [sp, #772]
    sub r12, r12, lr
    str r12, [sp, #776]
    add lr, sp, #48
    ldr r12, [lr, #0]
    str r12, [sp, #780]
    ldr r12, [sp, #776]
    ldr lr, [sp, #780]
    sub r12, r12, lr
    str r12, [sp, #784]
    add lr, sp, #52
    ldr r12, [lr, #0]
    str r12, [sp, #788]
    ldr r12, [sp, #784]
    ldr lr, [sp, #788]
    sub r12, r12, lr
    str r12, [sp, #792]
    add lr, sp, #56
    ldr r12, [lr, #0]
    str r12, [sp, #796]
    ldr r12, [sp, #792]
    ldr lr, [sp, #796]
    add r12, r12, lr
    str r12, [sp, #800]
    add lr, sp, #60
    ldr r12, [lr, #0]
    str r12, [sp, #804]
    ldr r12, [sp, #800]
    ldr lr, [sp, #804]
    add r12, r12, lr
    str r12, [sp, #808]
    add lr, sp, #64
    ldr r12, [lr, #0]
    str r12, [sp, #812]
    ldr r12, [sp, #808]
    ldr lr, [sp, #812]
    add r12, r12, lr
    str r12, [sp, #816]
    add lr, sp, #68
    ldr r12, [lr, #0]
    str r12, [sp, #820]
    ldr r12, [sp, #816]
    ldr lr, [sp, #820]
    add r12, r12, lr
    str r12, [sp, #824]
    add lr, sp, #72
    ldr r12, [lr, #0]
    str r12, [sp, #828]
    ldr r12, [sp, #824]
    ldr lr, [sp, #828]
    sub r12, r12, lr
    str r12, [sp, #832]
    add lr, sp, #76
    ldr r12, [lr, #0]
    str r12, [sp, #836]
    ldr r12, [sp, #832]
    ldr lr, [sp, #836]
    sub r12, r12, lr
    str r12, [sp, #840]
    add lr, sp, #80
    ldr r12, [lr, #0]
    str r12, [sp, #844]
    ldr r12, [sp, #840]
    ldr lr, [sp, #844]
    sub r12, r12, lr
    str r12, [sp, #848]
    add lr, sp, #84
    ldr r12, [lr, #0]
    str r12, [sp, #852]
    ldr r12, [sp, #848]
    ldr lr, [sp, #852]
    sub r12, r12, lr
    str r12, [sp, #856]
    add lr, sp, #88
    ldr r12, [lr, #0]
    str r12, [sp, #860]
    ldr r12, [sp, #856]
    ldr lr, [sp, #860]
    add r12, r12, lr
    str r12, [sp, #864]
    add lr, sp, #92
    ldr r12, [lr, #0]
    str r12, [sp, #868]
    ldr r12, [sp, #864]
    ldr lr, [sp, #868]
    add r12, r12, lr
    str r12, [sp, #872]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #876]
    ldr r12, [sp, #872]
    ldr lr, [sp, #876]
    add r12, r12, lr
    str r12, [sp, #880]
    add lr, sp, #100
    ldr r12, [lr, #0]
    str r12, [sp, #884]
    ldr r12, [sp, #880]
    ldr lr, [sp, #884]
    add r12, r12, lr
    str r12, [sp, #888]
    add lr, sp, #104
    ldr r12, [lr, #0]
    str r12, [sp, #892]
    ldr r12, [sp, #888]
    ldr lr, [sp, #892]
    sub r12, r12, lr
    str r12, [sp, #896]
    add lr, sp, #108
    ldr r12, [lr, #0]
    str r12, [sp, #900]
    ldr r12, [sp, #896]
    ldr lr, [sp, #900]
    sub r12, r12, lr
    str r12, [sp, #904]
    add lr, sp, #112
    ldr r12, [lr, #0]
    str r12, [sp, #908]
    ldr r12, [sp, #904]
    ldr lr, [sp, #908]
    sub r12, r12, lr
    str r12, [sp, #912]
    add lr, sp, #116
    ldr r12, [lr, #0]
    str r12, [sp, #916]
    ldr r12, [sp, #912]
    ldr lr, [sp, #916]
    sub r12, r12, lr
    str r12, [sp, #920]
    add lr, sp, #120
    ldr r12, [lr, #0]
    str r12, [sp, #924]
    ldr r12, [sp, #920]
    ldr lr, [sp, #924]
    add r12, r12, lr
    str r12, [sp, #928]
    add lr, sp, #124
    ldr r12, [lr, #0]
    str r12, [sp, #932]
    ldr r12, [sp, #928]
    ldr lr, [sp, #932]
    add r12, r12, lr
    str r12, [sp, #936]
    add lr, sp, #128
    ldr r12, [lr, #0]
    str r12, [sp, #940]
    ldr r12, [sp, #936]
    ldr lr, [sp, #940]
    add r12, r12, lr
    str r12, [sp, #944]
    add lr, sp, #132
    ldr r12, [lr, #0]
    str r12, [sp, #948]
    ldr r12, [sp, #944]
    ldr lr, [sp, #948]
    add r12, r12, lr
    str r12, [sp, #952]
    add lr, sp, #136
    ldr r12, [lr, #0]
    str r12, [sp, #956]
    ldr r12, [sp, #952]
    ldr lr, [sp, #956]
    sub r12, r12, lr
    str r12, [sp, #960]
    add lr, sp, #140
    ldr r12, [lr, #0]
    str r12, [sp, #964]
    ldr r12, [sp, #960]
    ldr lr, [sp, #964]
    sub r12, r12, lr
    str r12, [sp, #968]
    add lr, sp, #144
    ldr r12, [lr, #0]
    str r12, [sp, #972]
    ldr r12, [sp, #968]
    ldr lr, [sp, #972]
    sub r12, r12, lr
    str r12, [sp, #976]
    add lr, sp, #148
    ldr r12, [lr, #0]
    str r12, [sp, #980]
    ldr r12, [sp, #976]
    ldr lr, [sp, #980]
    sub r12, r12, lr
    str r12, [sp, #984]
    add lr, sp, #152
    ldr r12, [lr, #0]
    str r12, [sp, #988]
    ldr r12, [sp, #984]
    ldr lr, [sp, #988]
    add r12, r12, lr
    str r12, [sp, #992]
    add lr, sp, #156
    ldr r12, [lr, #0]
    str r12, [sp, #996]
    ldr r12, [sp, #992]
    ldr lr, [sp, #996]
    add r12, r12, lr
    str r12, [sp, #1000]
    add lr, sp, #160
    ldr r12, [lr, #0]
    str r12, [sp, #1004]
    ldr r12, [sp, #1000]
    ldr lr, [sp, #1004]
    add r12, r12, lr
    str r12, [sp, #1008]
    add lr, sp, #164
    ldr r12, [lr, #0]
    str r12, [sp, #1012]
    ldr r12, [sp, #1008]
    ldr lr, [sp, #1012]
    add r12, r12, lr
    str r12, [sp, #1016]
    ldr r0, [sp, #1016]
    mov r12, #1020
    add sp, sp, r12
    pop {pc}
.func_post:
main:
.main_pre:
    push {lr}
    mov r12, #32
    sub sp, sp, r12
.main_entry:
    ldr lr, =#1
    add r12, sp, #0
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #8]
    ldr r12, =#2
    ldr lr, =#9
    mul r12, r12, lr
    str r12, [sp, #12]
    ldr r12, [sp, #8]
    ldr lr, [sp, #12]
    add r12, r12, lr
    str r12, [sp, #16]
    ldr lr, [sp, #16]
    add r12, sp, #4
    str lr, [r12, #0]
    add lr, sp, #0
    ldr r12, [lr, #0]
    str r12, [sp, #20]
    add lr, sp, #4
    ldr r12, [lr, #0]
    str r12, [sp, #24]
    ldr r0, [sp, #20]
    ldr r1, [sp, #24]
    mov r12, #0
    sub sp, sp, r12
    bl func
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #28]
    ldr r0, [sp, #28]
    mov r12, #32
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
