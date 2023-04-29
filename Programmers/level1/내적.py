def solution(a, b):
    sum=0
    for x in range(0, len(b)):
        sum+=a[x]*b[x]
    return sum