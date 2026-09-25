def the_missing_number(nums: list[int], n: int):
    left = 0
    right = len(nums) 

    while left < right:
        mid = left+ (right-left)//2
        
        if nums[mid] -mid-1 < n:
            left = mid+1
        else:
            right = mid
   
    return left+n
