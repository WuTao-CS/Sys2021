    .arch armv8-a
    .file ""
    .text
    .arm
    .fpu neon
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
__mtstart:
    movw r11, #0
    movt r11, #256
    sub sp, sp, r11
    push {r0, r1, r2, r3}
    mov r3, r7
    mov r2, #4
.__mtstart_1:
    sub r2, r2, #1
    cmp r2, #0
    beq .__mtstart_2+0
    mov r7, #120
    mov r0, #273
    mov r1, sp
    swi #0
    cmp r0, #0
    bne .__mtstart_1+0
.__mtstart_2:
    mov r10, r2
    mov r7, r3
    pop {r0, r1, r2, r3}
    movw r11, #0
    movt r11, #256
    add sp, sp, r11
    mov pc, lr
__mtend:
    cmp r10, #0
    beq .__mtend_2+0
.__mtend_1:
    mov r7, #1
    swi #0
.__mtend_2:
    push {r0, r1, r2, r3}
    mov r1, #4
.__mtend_3:
    sub r1, r1, #1
    cmp r1, #0
    beq .__mtend_4+0
    push {r1, lr}
    sub sp, sp, #4
    mov r0, sp
    bl wait
    add sp, sp, #4
    pop {r1, lr}
    b .__mtend_3+0
.__mtend_4:
    pop {r0, r1, r2, r3}
    mov r10, #0
    mov pc, lr
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
