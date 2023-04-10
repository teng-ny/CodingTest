#내풀이
def solution(arr):
    answer = 0
    for i in range(0, len(arr)):
        answer+=arr[i]        
    answer=answer/len(arr)
    return answer 

#다른사람 풀이
def solution(arr):
    return sum(arr)/len(arr)