import matplotlib.pyplot as plt 
import numpy as np 


def Mag_comp(x):
    k = []
    if  (x >=-524288 and x<=-262144):
        k=[0,0,0]
    elif(x >=-262144 and x<=-131072):
        k=[0,0,1]
    elif(x >=-262144 and x<=-65536):
        k=[0,1,0]
    elif(x >=-65536  and x<= 65536):
        k=[0,1,1]
    elif(x >= 65536  and x<= 131072):
        k=[1,0,0]
    elif(x >= 131072 and x<= 262144):
        k=[1,0,1]
    elif(x >= 262144 and x<= 524288):
        k=[1,1,0]
    return(k)    

def PWLF (x,k):
    y = 0
    if  (k==[0,0,0]):
         y = (x/64 + 8520-328)
    elif(k==[0,0,1]):
        y =  (x/32 + 11796-328)+806 
    elif(k==[0,1,0]):
        y = (x/8 + 24904-328)      
    elif(k==[0,1,1]):
        y = (x/4 + 32768-328)
    elif(k==[1,0,0]):
        y = (x/8 + 41288-328)
    elif(k==[1,0,1]):
        y = (x/32 + 52429-328)+1144 
    elif(k==[1,1,0]):
        y = (x/64 + 57016-328)+546
    return(y)
    



# m1 = 1563/100000
# m2 = 2875/100000
# m3 = 13/100
# m4 = 25/100
# ### gardients from 1---->8
# m5 = 12/100
# m6 = 335/10000
# m7 = 1575/100000


x=[]
y=[]

for i in range(0,1048576):
    x.append(0)

x[0]=-524288
for i in range (0,1048575):
    x[i+1]=x[i]+1

for i in range(0,1048576):
    y.append(0)

for i in range (0,1048576):
    k = Mag_comp(x[i])
    y[i] = int(PWLF(x[i],k))


# for i in range (0,1048576): 
#     if   (x[i] >= -8*2**16 and x[i]<=-4*2**16):
#           y[i]= (m1*x[i]+8520)#0.13*2**16)
#     elif ((x[i] >= -4*2**16 and x[i]<=-2*2**16)):
#           y[i]= (m2*x[i]+0.18*2**16)
#     elif ((x[i] >= -2*2**16 and x[i]<=-1*2**16)):
#           y[i]= (m3*x[i]+0.38*2**16)         
#     elif ((x[i] >= -1*2**16 and x[i]<=1*2**16)):
#           y[i]= (m4*x[i]+0.50*2**16)
#     elif ((x[i] >= 1*2**16 and x[i]<= 2*2**16)):
#           y[i]= (m5*x[i]+0.63*2**16)
#     elif ((x[i] >= 2*2**16 and x[i]<= 4*2**16)):
#           y[i]= (m6*x[i]+0.80*2**16)
#     elif ((x[i] >= 4 *2**16and x[i]<= 8*2**16)):
#           y[i]= (m7*x[i]+0.87*2**16)


		 
plt.figure(1)
plt.cla()
plt.plot(x,y) 
plt.xlabel("x") 
plt.ylabel("f(x)") 
plt.title("Piece wise Sigmoid")
plt.show() 
plt.grid()

