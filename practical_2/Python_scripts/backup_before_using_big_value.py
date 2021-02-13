# -*- coding: utf-8 -*-
"""
Created on Tue Sep 22 15:12:52 2020

@author: maazk
"""

# Import matplotlib, numpy and math 
import matplotlib.pyplot as plt 
import numpy as np 
from fxpmath import Fxp


# np.arange(0,3000000,5.0/5.0).reshape(1000000,3)

########## Ideal Sigmoid ###########
l = np.arange(-8, 8, 16/1000000) 
z = 1/(1 + np.exp(-l)) 


########## Approximated Sigmoid ###########
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
x=[]
for i in range(0,500000):
    x.append(0)
x[0]=0
for i in range (0,500000-1):
    x[i+1]=(x[i]+8/500000)

y=[]
for i in range(0,500000):
    y.append(0)
y[0]=0
for i in range (0,500000-1):
    y[i+1]=(y[i]+1/500000)


for i in range (0,500000): 
    if (x[i] >= -8 and x[i]<=-4):
          y[i]= (m1*x[i]+0.13)
    elif ((x[i] >= -4 and x[i]<=-2)):
          y[i]= (m2*x[i]+0.18)
    elif ((x[i] >= -2 and x[i]<=-1)):
          y[i]= (m3*x[i]+0.38)         
    elif ((x[i] >= -1 and x[i]<=1)):
         y[i]= (m4*x[i]+0.50)
    elif ((x[i] >= 1 and x[i]<= 2)):
         y[i]= (m5*x[i]+0.63)
    elif ((x[i] >= 2 and x[i]<= 4)):
         y[i]= (m6*x[i]+0.80)
    elif ((x[i] >= 4 and x[i]<= 8)):
         y[i]= (m7*x[i]+0.87)

   
# y3=[]
# for i in range(0,500000):
#     y3.append(0)
# y3[0]=0
# for i in range (0,500000-1):
#     y3[i+1]=y3[i]+1/500000


# for i in range(0,500000):
#     y3[i]= Fxp(y[i])
 



y2 = np.float16(y)
x2 = np.float16(x)


# y4=[]
# for i in range(0,500000):
#     y4.append(0)
# y4[0]=0
# for i in range (0,500000-1):
#     y4[i+1]=y4[i]+1/500000

# for i in range (0,500000):
#     y4[i] = y3[i].bin()



# h = fxp(-7.25)      # create fxp variable with value 7.25
# h.info()

# h=[]
# for i in range(0,1000000):
#     h.append(0)
# h[0]=0
# for i in range (0,1000000-1):
#     h[i+1]=h[i]+1/1000000

# for i in range(0, 1000000):
#     h[i] = Fxp(y[i])

#convert to a float 16bit data type


########## Error Calculations ###########
#### Maximum Error ####
# error = np.arange(-8, 8, 16/1000000) 
# for j in range(0,1000000):
#     error[j] = abs(z[j]-y[j])

#### Average Error ####
# avg = np.arange(-8, 8, 16/1000000) 
# for k in range(0,1000000-1):
#     avg[k]   = np.average(np.sum(error[k]))
# avg   = (np.sum(error))/(10**6)


plt.figure(1)
plt.cla()
plt.plot(x2,y2) 
plt.plot(-1*x2,(-1*y2+1)) 
# plt.plot(l,z) 
plt.xlabel("x") 
plt.ylabel("f(x)") 
plt.title("Ideal vs Piece wise Sigmoid")
plt.show() 
plt.grid()


# plt.figure(2)
# plt.cla()
# plt.plot(x,error)
# # plt.xlabel("x") 
# # plt.ylabel("f(x)") 
# # plt.title("Ideal vs Piece wise Sigmoid")
# plt.show() 
# plt.grid() 


