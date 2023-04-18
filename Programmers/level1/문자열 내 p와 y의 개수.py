#나의 풀이
def solution(s):
    i=[]
    for x in s:
        i.append(x)
        
    p=i.count("p")
    P=i.count("P")
    p=p+P

    y=i.count("y")
    Y=i.count("Y")
    y=y+Y

    if p==y:
        return True
    else:
        return False

    return True

#다른사람 풀이
def solution(s):
    return s.lower().count("p")==s.lower().count("y")