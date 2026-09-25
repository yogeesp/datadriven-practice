def the_repeat_offenders(items: list):
    num_set = set()
    dupli = set()

    for item in items:
        if item not in num_set:
            num_set.add(item)
        else:
            dupli.add(item)
        
    return list(dupli)
