import re

if __name__ == "__main__":
    s = input()
    lower_l = "".join(sorted([*"".join([i for i in re.findall(r"[a-z]*", s) if i])]))
    upper_l = "".join(sorted([*"".join([i for i in re.findall(r"[A-Z]*", s) if i])]))

    number = [*"".join([i for i in re.findall(r"[0-9]*", s) if i])]

    odd = "".join(sorted([i for i in number if int(i) % 2 != 0]))
    even = "".join(sorted([i for i in number if int(i) % 2 == 0]))


    print(lower_l + upper_l + odd + even)