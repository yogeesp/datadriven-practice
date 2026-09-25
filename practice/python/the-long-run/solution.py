def run_length_encoding(s: str):
    if s == "":
        return s
    new_str = ""
    new_str +=s[0]
    sub_count = 0
    for i in range(1,len(s)):
   
        if s[i] == s[i-1]:
            sub_count +=1
        else :
            new_str += str(sub_count + 1)
            new_str += s[i]
            sub_count = 0
    return new_str+str(sub_count + 1)
