def high_water_marks(readings: list) -> list:
    maxi = float('-inf')
    result = []
    
    for i in readings:
        maxi = max(maxi,i)
        result.append(maxi)
        
    return result
