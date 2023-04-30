def solution(price, money, count):
    charge=0
    for i in range(1, count+1):
        charge+=price*i
    if money > charge:
        return 0
    else:
        return charge-money