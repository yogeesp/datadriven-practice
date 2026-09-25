def high_water_marks(readings):
    maxi = float('-inf')
    result = []
    for i in readings:
        maxi = max(maxi,i)
        result.append(maxi)

    return result
