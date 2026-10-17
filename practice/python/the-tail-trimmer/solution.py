def remove_kth_from_end(lst: list, k: int) -> list:

    new_li = lst
    if k > len(lst):
        return new_li
    new_li.pop(-k)

    return new_li
