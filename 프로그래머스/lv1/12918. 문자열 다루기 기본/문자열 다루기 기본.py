def solution(s):
    alpha = 'abcdefghijklmnopqrstuvwxyz'
    FalseNum = 0
    if len(s) == 4 or len(s) == 6:
        for i in range(len(s)):
            if s[i].lower() in alpha:
                FalseNum += 1
            else:
                pass
        if FalseNum != 0:
            return False
        else: 
            return True
    else:
        return False