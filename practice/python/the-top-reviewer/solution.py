def most_reviewed_restaurant(reviews: dict) -> str:
    best_count = 0
    best_restaurant = ""
    for restaurant,review in reviews.items():
        if len(review) > best_count:
            best_count = len(review)       
            best_restaurant = restaurant

    return best_restaurant
