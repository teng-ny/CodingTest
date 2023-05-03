def solution(arr1, arr2):
    for i in range(len(arr1)):
        for x in range(len(arr1[0])):
            arr1[i][x]+=arr2[i][x]
    return arr1
