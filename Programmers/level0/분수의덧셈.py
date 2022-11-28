import fractions
#https://steemit.com/kr/@coinchuu/python

def solution(denum1, num1, denum2, num2):
    a=fractions.Fraction(denum1, num1)
    b=fractions.Fraction(denum2, num2)
    합=a+b
    분자=합.numerator
    분모=합.denominator
    answer = [분자, 분모]
    return answer