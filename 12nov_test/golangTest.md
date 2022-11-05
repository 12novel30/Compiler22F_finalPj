Letter → [a-zA-Z_] 
Digit → [0-9] 
Ident → {Letter}({Letter} | {Digit})* 


# lex
def part
%%
transition rule part
%%
user subprogram part

## def part
%{
    /*lex.yy.c의 앞부분에 그대로 복사*/
    /*자료구조, 변수, 상수 정의*/
%}
이름 치환식
이름 치환식

## transition rule part
규칙 수행
규칙 수행

# yacc
def part
%%
transition rule part
%%
user subprogram part

- 시작 기호 %start
- lex로부터 반환되는 토큰: %token
- 토큰은 대문자, 토큰 아니면 소문자
- 
- 사용자 프로그램: 오류 처리 루틴 등