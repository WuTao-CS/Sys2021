#include<stdio.h>

// TODO(zyh) 使用格式化输入输出，需要验证与库函数行为是否一致

int getint() {
    int var;
    scanf("%d", &var);
    return var;
}

int getch() {
    return getchar();
}

void putint(int var) {
    printf("%d", var);
}

void putch(int var) {
    putchar(var);
}

int getarray(int a[]) {
    int num;
    scanf("%d", &num);
    for (int i=0; i < num; i++)
        scanf("%d", a+i);

    return num;
}

void putarray(int num, int a[]) {
    printf("%d:", num);
    for (int i=0; i < num; i++)
        printf("%d ", a[i]);
    putchar('\n');
}

void putf(char *s, int first, ...) {
    printf("putf:\t然而我并不想写这个函数\n");
}

void starttime() {
    printf("starttime:\n");
}

void stoptime() {
    printf("stoptime:\n");
}

