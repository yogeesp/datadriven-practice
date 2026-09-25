def decode_rle(encoded: str) -> str:
    final_string = ""

    for i in range(len(encoded)):
        if i % 2 == 0:
            
            final_string += int(encoded[i]) * encoded[i + 1]

    return final_string
