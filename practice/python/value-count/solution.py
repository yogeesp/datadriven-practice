def count_occur(lst: list, target) -> int:
    count = 0
    for l in lst:
        if l == target:
            count+=1

    return count
