def missing_keys(record: dict, required: list) -> list:

    result = []
    for key in required:
        if key not in record.keys():
            result.append(key)

    return result
