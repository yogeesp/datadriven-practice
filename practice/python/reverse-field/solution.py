def reverse_str(s: str) -> str:
    li = list(s)
    l = 0
    r = len(s)-1
    
    while l<r:
        li[l],li[r] = li[r],li[l]
        l+=1
        r-=1
    return ''.join(c for c in li)
