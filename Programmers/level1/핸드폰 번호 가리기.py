#태은's 풀이
#앞에 숫자는 *로 대체 후 다시 문자열로 반환
def solution(phone_number):
    num=list(phone_number)
    for i in range(len(num)-4):
        num[i]="*"
    answer=''.join(num)
    return answer

#다른사람 풀이
def solution(s):
    return "*"*(len(s)-4)+s[-4:]