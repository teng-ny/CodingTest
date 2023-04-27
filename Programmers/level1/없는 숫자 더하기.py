#태은's 풀이
def solution(numbers):
    answer=45
    for i in range(len(numbers)):
        answer-=numbers[i]
    return answer

#다른 사람 풀이
def solution(numbers):
    answer=0
    for i in range(1,10):
        if i not in numbers:
            answer += i
    return answer