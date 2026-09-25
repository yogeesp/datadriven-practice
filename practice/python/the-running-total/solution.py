def prefix_sum(nums):
    new_arr = [] 
    curr_sum = 0
    for i in nums:
        curr_sum +=i
        new_arr.append(curr_sum)

    return new_arr
