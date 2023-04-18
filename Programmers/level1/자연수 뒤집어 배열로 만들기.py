#내 풀이
def solution(n):
    n=list(str(n))
    answer = []
    for i in range(len(n)-1, -1, -1):
        answer.append(int(n[i]))
    return answer


#다른사람 풀이
def digit_reverse(n):
    return list(map(int, reversed(str(n))))


