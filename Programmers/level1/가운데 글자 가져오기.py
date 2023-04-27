def solution(s):
    answer=''
    index=len(s)//2
    
    if len(s)%2==1:
        answer=s[index]
    else:
        answer=s[index-1:index+1]
    return answer