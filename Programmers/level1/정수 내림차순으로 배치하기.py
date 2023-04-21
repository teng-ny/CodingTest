def solution(n):
    num=list(str(int(n)))
    num.sort(reverse=True)
    return int("".join(num))