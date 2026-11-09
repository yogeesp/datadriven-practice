def filter_integers(items: list) -> list[int]:
    new_li = []

    for item in items:
        if type(item) == int:
            new_li.append(item)


    return new_li
