# -*- coding: utf-8 -*-
"""
Created on Tue Sep 29 14:32:05 2020

@author: maazk
"""
import numpy as np
import matplotlib.pyplot as plt


# x = np.arange(-8, 8, 1) 
# y = 1/(1 + np.exp(-x)) 

# m = (np.arange(0,16,1.0))
# for i in range(0, 15):
#     m[i] = (y[i+1]-y[i])/((x[i+1]-x[i]))

m = np.arange(-8,8,1)
for k in range(-8,8):
    m[k]= k *2**16




# m1=  1/2048
# m2=  1/512
# m3=  1/256
# m4=  1/64
# m5=  1/32
# m6=  1/16
# m7=  1/8
# m8=  1/4
# m9=  1/4
# m10=  1/8
# m11=  1/16
# m12=  1/32
# m13=  1/64
# m14=  1/256 
# m15=  1/512
# m16=  1/2048


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
    if   (x[i] >= -524288 and x[i]<= -458752):
          y[i]= int(1/2048 * x[i]+ 256)
          
    elif ((x[i] >= -458752  and x[i]<= -393216 )):
          y[i]= int(1/512 * x[i]+ 956)
          
    elif ((x[i] >= -393216  and x[i] <= -327680 )):
          y[i]= int(1/256 * x[i]+ 1698)
          
    elif ((x[i] >= -327680 and x[i]<= -262144 )):
          y[i]= int(1/64 * x[i]+ 5560)
          
    elif ((x[i] >= -262144  and x[i] <= -196608 )):
          y[i]= int(1/32 * x[i]+ 9372)+285
          
    elif ((x[i] >= -196608 and x[i]<= -131072)):
          y[i]= int(1/16 * x[i]+ 15395) +406
          
    elif ((x[i] >= -131072 and x[i]<= -65536 )):
          y[i]= int(1/8 * x[i]+ 24208 ) +756

    elif ((x[i] >= -65536 and x[i]<= 0)):
          y[i]= int(1/4 * x[i]+ 34015)-862
          
    elif ((x[i] >= 0 and x[i]<= 65536)):
          y[i]= int(1/4 * x[i]+ 34015)-862
          
    elif ((x[i] >= 65536 and x[i]<= 131072 )):
          y[i]= int(1/8 * x[i]+41344)
          
    elif ((x[i] >= 131072  and x[i]<= 196608 )):
          y[i]= int(1/16 * x[i]+ 50152)
          
    elif ((x[i] >= 196608  and x[i]<= 262144 )):
          y[i]= int(1/32 * x[i]+ 56167) 
          
    elif ((x[i] >= 262144  and x[i]<= 327680 )):
          y[i]= int(1/64 * x[i]+ 59977)
          
    elif ((x[i] >= 327680 and x[i]<= 393216)):
          y[i]= int(1/256 * x[i]+ 63838)
          
    elif ((x[i] >= 393216 and x[i]<= 458752)):
          y[i]= int(1/512 * x[i]+ 64551)
     
    elif ((x[i] >= 458752 and x[i]<= 524288 )):
          y[i]= int(1/2048 * x[i]+ 65280)     


x2=[]
y2=[]
for i in range(0,1048576):
    x2.append(0)

x2[0]=-524288
for i in range (0,1048575):
    x2[i+1]=x2[i]+1


for i in range(0,1048576):
    y2.append(0)


for i in range (0,1048576): 
    if   (x2[i] >= -524288 and x2[i]<=-262144):
          y2[i]= int(1/64*x2[i]+8192)
    elif ((x2[i] >= -262144 and x2[i]<= -131072)):
          y2[i]= int(1/32 *x2[i]+11468)+805
    elif ((x2[i] >= -131072 and x2[i]<=-65536)):
          y2[i]= int(1/8*x2[i]+24576)
    elif ((x2[i] >= -65536 and x2[i]<= 65536)):
          y2[i]= int(1/4*x2[i]+32440)
    elif ((x2[i] >= 65536 and x2[i]<= 131072)):
          y2[i]= int(1/8*x2[i]+40960)
    elif ((x2[i] >= 131072 and x2[i]<= 262144)):
          y2[i]= int(1/32*x2[i]+52101)+1144 
    elif ((x2[i] >= 262144 and x2[i]<= 524288)):
          y2[i]= int(1/64*x2[i]+56688)+657



x3 = np.arange(-8, 8, 1) 
y3 = 1/(1 + np.exp(-x3)) 


    
plt.cla()
# plt.plot(2**16*x3,2**16*y3,'g')
plt.plot(x,y,'b')
# plt.plot(x2,y2,'r')
plt.show()
plt.grid()


