#내 풀이
def solution(a, b):
    if a==b:
        return a
    elif a>b:
        return sum(range(b,a+1))
    else:
        return sum(range(a,b+1))
    return range(b,a)

#다른 사람 풀이
def solution(a, b):
    if a>b:
        a,b = b,a
    return sum(range(a, b + 1))