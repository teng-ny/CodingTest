def solution(left, right):
    answer=0
    x=0
    
    #숫자 하나씩 넣기
    for n in range(left, right+1):
        
        #약수 개수 판별
        for i in range(1, n+1):
            if n%i==0:
                x+=1
                
        if x%2==0:
            x=0
            answer+=n
        else:
            x=0
            answer-=n
    return answer