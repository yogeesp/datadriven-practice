def the_deep_dictionary(data: dict[str, list[int]]):
    maxi = -1
    restaurant = ''
    for key,value in data.items():
        #print(f"{key},{value}")
        count = len(value)
        if count > maxi:
                maxi = count
                restaurant = key
                #print(restaurant)
    return restaurant
