#반복문과 if 함수를 여러개 쓰는 방법에 대해서 생각해볼 수 있었던 문제
def solution(num):
    if num != 1:
        for i in range(1, 500):
            if num%2 == 0:
                num = num/2
            else:
                num=num*3+1

            if num == 1:
                return i
    else:
        return 0