def extract_odd_from_string(s: str) -> str:
    new = ''
    
    for letter in s:
        if letter.isdigit():
            if int(letter)%2 != 0:
                new += letter
    
    return new
