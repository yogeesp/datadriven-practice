def inverted_triangle(n: int) -> list[str]:
    results = []
    j = n
    while j >0:
        results.append(j* "*")
        j-=1

    return results
