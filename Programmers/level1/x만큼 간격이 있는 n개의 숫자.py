def solution(x, n):
    answer = []
    #예시 x=2, n=5
    #2*1, 2*2, 2*3, 2*4, 2*5 
    # for i in ragne(1, n+1)
    for i in range(1, n+1):
        answer.append(x*i)
    return answer