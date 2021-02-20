# -*- coding: utf-8 -*-
"""
Created on Tue Sep 22 15:12:52 2020

@author: maazk
"""

# Import matplotlib, numpy and math 
import matplotlib.pyplot as plt 
import numpy as np 
# from fapmath import Fap


# np.arange(0,3000000,5.0/5.0).reshape(1000000,3)

########## Ideal Sigmoid ###########
l = np.arange(-8, 8, 16/1000000) 
z = (2**16)*1/(1 + np.exp(-l)) 


########## Approaimated Sigmoid ###########
### gardients from -8---->1
m1 = np.float16((0.0625-0)/(4))
m2 = np.float16((0.12-0.0625)/(2))
m3 = np.float16((0.25-0.12)/(1))
m4 = np.float16((0.75-0.25)/(2))
### gardients from 1---->8
m5 = np.float16((0.87-0.75)/(1))
m6 = np.float16((0.937-0.87)/(2))
m7 = np.float16((1-0.937)/(4))


### Converting the breakpoint table to a piecewise function ###
### Bypassing np.arrange ###
a=[]
for i in range(0,1000000):
    a.append(0)
a[0]=-8
for i in range (0,1000000-1):
    a[i+1]=(a[i]+16/1000000)

b=[]
for i in range(0,1000000):
    b.append(0)
b[0]=0
for i in range (0,1000000-1):
    b[i+1]=(b[i]+1)#1/500000)


for i in range (0,1000000): 
    if (a[i] >= -8 and a[i]<=-4):
          b[i]= (m1*a[i]+0.13)*(2**16)
    elif ((a[i] >= -4 and a[i]<=-2)):
          b[i]= (m2*a[i]+0.18)*(2**16)
    elif ((a[i] >= -2 and a[i]<=-1)):
          b[i]= (m3*a[i]+0.38)*(2**16)             
    elif ((a[i] >= -1 and a[i]<=1)):
         b[i]= (m4*a[i]+0.50)*(2**16)
    elif ((a[i] >= 1 and a[i]<= 2)):
         b[i]= (m5*a[i]+0.63)*(2**16)
    elif ((a[i] >= 2 and a[i]<= 4)):
         b[i]= (m6*a[i]+0.80)*(2**16)
    elif ((a[i] >= 4 and a[i]<= 8)):
         b[i]= (m7*a[i]+0.87)*(2**16)

   
# y3=[]
# for i in range(0,500000):
#     y3.append(0)
# y3[0]=0
# for i in range (0,500000-1):
#     y3[i+1]=y3[i]+1/500000


# for i in range(0,500000):
#     y3[i]= Fap(b[i])
 



# y2 = np.float16(b)
# a2 = np.float16(a)


# y4=[]
# for i in range(0,500000):
#     y4.append(0)
# y4[0]=0
# for i in range (0,500000-1):
#     y4[i+1]=y4[i]+1/500000

# for i in range (0,500000):
#     y4[i] = y3[i].bin()



# h = fap(-7.25)      # create fap variable with value 7.25
# h.info()

# h=[]
# for i in range(0,1000000):
#     h.append(0)
# h[0]=0
# for i in range (0,1000000-1):
#     h[i+1]=h[i]+1/1000000

# for i in range(0, 1000000):
#     h[i] = Fap(b[i])

#convert to a float 16bit data type


######### Error Calculations ###########
### Maaimum Error ####
error = np.arange(-8, 8, 16/1000000) 
for j in range(0,1000000-1):
    error[j] = abs(z[j]-b[j])

#### Average Error ####
# avg = np.arange(-8, 8, 16/1000000) 
# for k in range(0,1000000-1):
#     avg[k]   = np.average(np.sum(error[k]))
# avg   = (np.sum(error))/(10**6)


# plt.figure(1)
# plt.cla()
# # plt.plot(a2,y2) 
# plt.plot(a,b) 
# # plt.plot(l,z) 
# plt.xlabel("a") 
# plt.ylabel("f(a)") 
# plt.title("Ideal vs Piece wise Sigmoid")
# plt.show() 
# plt.grid()


plt.figure(2)
plt.cla()
plt.plot(error)
plt.xlabel("a") 
plt.ylabel("f(a)") 
plt.title("Ideal vs Piece wise Sigmoid")
plt.show() 
plt.grid() 


