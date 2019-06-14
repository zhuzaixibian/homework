# import nltk
# from nltk.tokenize import sent_tokenize
# para = "Hello World. It's good to see you. Thanks for buying this book."
# print(sent_tokenize(para))
# sentence="It's good to see you."
# tokens=nltk.word_tokenize(sentence)
# print(tokens)

import nltk
from nltk.tokenize import sent_tokenize
para = '''when Wukong heard these words,  
       he kowtowed reverently and implored the Patriarch, 
       “Master, if you do perform a service for someone, you must do it thoroughly.
        May you be most merciful and impart to me also this technique of cloud-soaring. 
       I would never dare forget your gracious favor.” '''
print(sent_tokenize(para))
sentence = '''when Wukong heard these words,  
       he kowtowed reverently and implored the Patriarch, 
       “Master, if you do perform a service for someone, you must do it thoroughly.
        May you be most merciful and impart to me also this technique of cloud-soaring. 
       I would never dare forget your gracious favor.” '''
tokens=nltk.word_tokenize(sentence)
print(tokens)
