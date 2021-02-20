# -*- coding: utf-8 -*-
"""
Created on Tue Sep 22 15:12:52 2020

@author: maazk
"""

# Import matplotlib, numpy and math 
import matplotlib.pyplot as plt 
import numpy as np 


# np.arange(0,3000000,5.0/5.0).reshape(1000000,3)

########## Ideal Sigmoid ###########
l = np.arange(-8, 8, 16/1000000) 
z = 1/(1 + np.exp(-l)) 


########## Approximated Sigmoid ###########
### gardients from -8---->1
m1 = (0.0625-0)/(4)
m2 = (0.12-0.0625)/(2)
m3 = (0.25-0.12)/(1)
m4 = (0.75-0.25)/(2)
### gardients from 1---->8
m5 = (0.87-0.75)/(1)
m6 = (0.937-0.87)/(2)
m7 = (1-0.937)/(4)


### Converting the breakpoint table to a piecewise function ###
y = np.arange(-8, 8, 16/1000000) 
x = np.arange(-8, 8, 16/1000000)

for i in y:
    if (x[i] >= -8 and x[i]<=-4):
        y[i]= m1*x[i]+0.13
    elif ((x[i] >= -4 and x[i]<=-2)):
         y[i]= (m2*x[i]+0.18)#+0.0025
    elif ((x[i] >= -2 and x[i]<=-1)):
         y[i]= (m3*x[i]+0.38)#+0.005
    elif ((x[i] >= -1 and x[i]<=1)):
         y[i]= (m4*x[i]+0.50)#+0.005
      
    elif ((x[i] >= 1 and x[i]<= 2)):
         y[i]= (m5*x[i]+0.63)#+0.005
    elif ((x[i] >= 2 and x[i]<= 4)):
         y[i]= (m6*x[i]+0.80)#+0.008
    elif ((x[i] >= 4 and x[i]<= 8)):
         y[i]= (m7*x[i]+0.87)#+0.009   

#convert to a float 16bit data type
y2 = np.float16(y)
x2 =np.float16(x)

########## Error Calculations ###########
#### Maximum Error ####
error = np.arange(-8, 8, 16/1000000) 
for j in range(0,1000000):
    error[j] = abs(z[j]-y[j])

#### Average Error ####
# avg = np.arange(-8, 8, 16/1000000) 
# for k in range(0,1000000-1):
#     avg[k]   = np.average(np.sum(error[k]))

avg   = (np.sum(error))/(10**6)

plt.figure(1)
plt.cla()
plt.plot(x2,y2) 
plt.plot(l,z) 
plt.xlabel("x") 
plt.ylabel("f(x)") 
plt.title("Ideal vs Piece wise Sigmoid")
plt.show() 
plt.grid()


plt.figure(2)
plt.cla()
plt.plot(x,error)
# plt.xlabel("x") 
# plt.ylabel("f(x)") 
# plt.title("Ideal vs Piece wise Sigmoid")
plt.show() 
plt.grid() 


# plt.figure(3)
# plt.cla()
# plt.plot(x,avg)
# # plt.xlabel("x") 
# # plt.ylabel("f(x)") 
# # plt.title("Ideal vs Piece wise Sigmoid")
# plt.show() 
# plt.grid() 
# # plt.plot(l,z) 




