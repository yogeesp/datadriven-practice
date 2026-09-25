def find_duplicates_only(nums: list[int]) -> list[int]:

    nums_duplicate = sorted(nums)
    results= []
    
    for i in range(len(nums)):
        if nums_duplicate[i] == nums_duplicate[i-1]:

            results.append(nums_duplicate[i])

    return results
