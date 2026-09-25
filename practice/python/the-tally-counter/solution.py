def count_occurrences(nums: list, target: int) -> int:

    count = 0
    for num in nums:
        if num ==target:
            count+=1
    return count
