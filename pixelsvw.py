import sys

for line in sys.stdin:
    a = line.replace("\n","").split(" ")
    c = 0
    l = []
    for x in a:
        l.append(str(c)+":"+x)
        c = c + 1
    print " ".join(l)
    
