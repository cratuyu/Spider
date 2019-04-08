import re


string = "九里象湖城  南昌县-象湖新城-九里象湖城（公寓） "

print(re.findall("^\w+", string))
print(string)
print(re.findall("[\S ]+$", string))
