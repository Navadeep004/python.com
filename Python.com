a=int(input("day of range min: "))
b=int(input("month of range min: "))
c=int(input("year of range min: "))
p=int(input("day of range max: "))
q=int(input("month of range max: "))
r=int(input("year of range max: "))
print("\nLeap years from the range of")
print("(",end='')
print(a,end='')
print("/",end="")
print(b,end='')
print("/",end='')
print(c,end='')
print(")",end='')
print("to",end='')
print("(",end='')
print(p,end='')
print("/",end="")
print(q,end='')
print("/",end='')
print(r,end='')
print(") ",end='')
print("is\n")
for i in range(c,r+1):
    if(i%4==0):
        print(i,end='')
        if(i==r-1):
            print("")
        else:
            print(",",end='')
print("\n\nNon leap years are:\n")
for j in range(c,r+1):
    if(j%4!=0):
        print(j,end='')
        if(j==r):
            print("")
        else:
            print(",",end='')