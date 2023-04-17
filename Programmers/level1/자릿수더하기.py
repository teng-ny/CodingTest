#나의 풀이
def solution(n):
    answer=0
    n=str(n)
    for x in n:
        answer+=int(x)
    return answer

#다른 사람 풀이
def solution(n):
    return sum(int(x) for x in str(n))