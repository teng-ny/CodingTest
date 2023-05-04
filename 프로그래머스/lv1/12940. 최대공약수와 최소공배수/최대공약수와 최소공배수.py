def solution(a, b):
    answer=[]
    
    #최대공약수
    for i in range(min(a,b), 0, -1):
        if a%i==0 and b%i==0:
            answer.append(i)
            break

    #최대공배수
    for x in range(max(a,b), a*b+1):
        if x%a==0 and x%b==0:
            answer.append(x)
            break
            
    return answer