#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void print(char* str){
    printf("%s",str);
}

void println(char* str){
    printf("%s\n",str);
}

void printInt(int n){
    printf("%d",n);
}

void printlnInt(int n){
    printf("%d\n",n);
}

char* __merge_string(char* s1,char* s2){
    int len=strlen(s1)+strlen(s2)+1;
    char* str=(char*)malloc(sizeof(char)*len);
    str[0]='\0';
    strcat(str,s1);
    strcat(str,s2);
    str[len-1]='\0';
    return str;
}

unsigned char __string_slt(char* s1,char* s2){
    return strcmp(s1,s2)<0;
}

unsigned char __string_sle(char* s1,char* s2){
    return strcmp(s1,s2)<=0;
}

unsigned char __string_sgt(char* s1,char* s2){
    return strcmp(s1,s2)>0;
}

unsigned char __string_sge(char* s1,char* s2){
    return strcmp(s1,s2)>=0;
}

unsigned char __string_eq(char* s1,char* s2){
    return strcmp(s1,s2)==0;
}

unsigned char __string_ne(char* s1,char* s2){
    return strcmp(s1,s2)!=0;
}

int getInt(){
    int n;
    scanf("%d",&n);
    return n;
}

char* getString(){
    char* str=(char*)malloc(256);
    scanf("%s",str);
    return str;
}

char* toString(int n){
    char* str=(char*)malloc(256);
    sprintf(str,"%d",n);
    return str;
}

char* __malloc(int n){
    return (char*)malloc(n);
}

int __string_length(char* str){
    return strlen(str);
}

char* __string_substring(char* str,int l,int r){
    int len=r-l+1;
    char* substr=(char *)malloc(sizeof(char)*len);
    memcpy(substr,str+l,len);
    substr[len-1]='\0';
    return substr;
}

int __string_parseInt(char* str){
    int u;
    sscanf(str,"%d",&u);
    return u;
}

int __string_ord(char* str,int n){
    return (int)str[n];
}