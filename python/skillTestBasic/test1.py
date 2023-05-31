 def reverse_words_order_and_swap_cases(sentence):
    l_s = sentence.split(' ')
    reverse_l_s = l_s[::-1]

    res_lst = list()

    for word in reverse_l_s:

        temp_word = ''
        for letter in word:
            if letter.isupper():
                temp_word += letter.lower()
            else:
                temp_word += letter.upper()
        res_lst.append(temp_word)
    return ' '.join(res_lst)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')
    sentence = input()
    result = reverse_words_order_and_swap_cases(sentence)
    fptr.write(result + '\n')
    fptr.close()



