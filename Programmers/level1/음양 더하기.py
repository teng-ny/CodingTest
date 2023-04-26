def solution(absolutes, signs):
    for i in range(0, len(absolutes)):
        if signs[i]==True:
            absolutes[i]=absolutes[i]
        else:
            absolutes[i]=(-1)*absolutes[i]
    
    return sum(absolutes)