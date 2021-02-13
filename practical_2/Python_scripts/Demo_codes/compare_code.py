# -*- coding: utf-8 -*-
"""
Created on Mon Sep 28 10:32:41 2020

@author: maazk
"""
import numpy as np
import matplotlib.pyplot as plt

##############################################################################
############################ Low VHDL Level Data #############################
# ##############################################################################
# data_x = np.genfromtxt("VHDL_x.txt",dtype=np.int64)
# data_y = np.genfromtxt("VHDL_y.txt",dtype=np.int64)

# data_y_2 = np.genfromtxt("VHDL_y_2.txt",dtype=np.int64)

##############################################################################
############################# Low Level Model 1 ##############################
##############################################################################

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
    if   (x[i] >= -524288 and x[i]<=-262144):
          y[i]= int(1/64*x[i]+8192)+1
    elif ((x[i] >= -262144 and x[i]<= -131072)):
          y[i]= int(1/32 *x[i]+11468)+805+1
    elif ((x[i] >= -131072 and x[i]<=-65536)):
          y[i]= int(1/8*x[i]+24576)+1
    elif ((x[i] >= -65536 and x[i]<= 65536)):
          y[i]= int(1/4*x[i]+32440)+1
    elif ((x[i] >= 65536 and x[i]<= 131072)):
          y[i]= int(1/8*x[i]+40960)+1
    elif ((x[i] >= 131072 and x[i]<= 262144)):
          y[i]= int(1/32*x[i]+52101)+1144 +1
    elif ((x[i] >= 262144 and x[i]<= 524288)):
          y[i]= int(1/64*x[i]+56688)+657+1

##############################################################################
############################# Low Level Model 2 ##############################
##############################################################################

# x2=[]
# y2=[]
# for i in range(0,1048576):
#     x2.append(0)

# x2[0]=-524288
# for i in range (0,1048575):
#     x2[i+1]=x2[i]+1

# for i in range(0,1048576):
#     y2.append(0)

# for i in range (0,1048576): 
#     if   (x2[i] >= -524288 and x2[i]<= -458752):
#           y2[i]= int(1/2048 * x2[i]+ 256)+1
          
#     elif ((x2[i] >= -458752  and x2[i]<= -393216 )):
#           y2[i]= int(1/512 * x2[i]+ 956)+1
          
#     elif ((x2[i] >= -393216  and x2[i] <= -327680 )):
#           y2[i]= int(1/256 * x2[i]+ 1698)+1
          
#     elif ((x2[i] >= -327680 and x2[i]<= -262144 )):
#           y2[i]= int(1/64 * x2[i]+ 5560)+1
          
#     elif ((x2[i] >= -262144  and x2[i] <= -196608 )):
#           y2[i]= int(1/32 * x2[i]+ 9372)+1
          
#     elif ((x2[i] >= -196608 and x2[i]<= -131072)):
#           y2[i]= int(1/16 * x2[i]+ 15395)+1
          
#     elif ((x2[i] >= -131072 and x2[i]<= -65536 )):
#           y2[i]= int(1/8 * x2[i]+ 24208 ) +1

#     elif ((x2[i] >= -65536 and x2[i]<= 0)):
#           y2[i]= int(1/4 * x2[i]+ 34015)+1
          
#     elif ((x2[i] >= 0 and x2[i]<= 65536)):
#           y2[i]= int(1/4 * x2[i]+ 34015)+1
          
#     elif ((x2[i] >= 65536 and x2[i]<= 131072 )):
#           y2[i]= int(1/8 * x2[i]+41344)+1
          
#     elif ((x2[i] >= 131072  and x2[i]<= 196608 )):
#           y2[i]= int(1/16 * x2[i]+ 50152)+1
          
#     elif ((x2[i] >= 196608  and x2[i]<= 262144 )):
#           y2[i]= int(1/32 * x2[i]+ 56167) +1
          
#     elif ((x2[i] >= 262144  and x2[i]<= 327680 )):
#           y2[i]= int(1/64 * x2[i]+ 59977)+1
          
#     elif ((x2[i] >= 327680 and x2[i]<= 393216)):
#           y2[i]= int(1/256 * x2[i]+ 63838)+1
          
#     elif ((x2[i] >= 393216 and x2[i]<= 458752)):
#           y2[i]= int(1/512 * x2[i]+ 64551)+1
     
#     elif ((x2[i] >= 458752 and x2[i]<= 524288 )):
#           y2[i]= int(1/2048 * x2[i]+ 65280)+1

# yt2=np.transpose(y2)
# xt2=np.transpose(x2)

# ##############################################################################
# ############################## High Level Model ##############################
# ##############################################################################

# ########## Ideal Sigmoid ###########
# l = np.arange(-8, 8, 16/1048576) 
# z = 1/(1 + np.exp(-l)) 
# # l = np.arange(-524288, 524288, 1) 
# # z = 1*524288/(524288 + np.exp(-l)) 

# ideal_x = l*2**16
# ideal_y = z*2**16 

# ##############################################################################
# ############################# Error for model 1 ##############################
# ##############################################################################

# yt=np.transpose(y)
# xt=np.transpose(x)

# error = np.arange(-524288, 524288,1.0 )
# for i in range(0,1048576):
#     error[i]=0
# error = np.arange(-524288, 524288, 1.0) 
# for j in range(0,1048576):
#     error[j] = abs((y[j])-(data_y[j]))/8*2**16



# ##############################################################################
# ############################# Error for model 2 ##############################
# ##############################################################################

# error_2 = np.arange(-524288, 524288,1.0 )
# for i in range(0,1048576):
#     error_2[i]=0
# error_2 = np.arange(-524288, 524288, 1.0) 
# for j in range(0,1048576):
#     error_2[j] = abs((y2[j])-(data_y_2[j]))/8*2**16


# ##############################################################################
# ########################## Error for model vs ideal ##########################
# ##############################################################################


# #### Model 1 ####
# error_3 = np.arange(-524288, 524288,1.0 )
# for i in range(0,1048576):
#     error_3[i]=0
# error_3 = np.arange(-524288, 524288, 1.0) 
# for j in range(0,1048576):
#     error_3[j] = 100*(abs((-yt[j])+(ideal_y[j])))/2**16


# #### Model 2 ####
# error_4 = np.arange(-524288, 524288,1.0 )
# for i in range(0,1048576):
#     error_4[i]=0
# error_4 = np.arange(-524288, 524288, 1.0) 
# for j in range(0,1048576):
#     error_4[j] = 100*(abs((-yt2[j])+(ideal_y[j])))/2**16



# comp = []
# for i in range(158350,158360):
#     print(data_y_2[i])


##############################################################################
#################################### Plot ####################################
##############################################################################

# print(error)

# plt.figure(1)
# plt.cla()
# plt.plot(ideal_x ,ideal_y ,'g')


# # plt.plot(np.transpose(x)/2**16,np.transpose(y)/2**16,'b') 
# # plt.plot(data_+1x/2**16,data_y+1/2**16,'r')

# plt.plot(xt,yt,'c') 
# plt.plot(data_x+1,data_y+1,'-')
# plt.plot(data_x-1,data_y_2,'b')
# plt.plot(xt2,y,'c')
# plt.ylabel("y(x)") 
# plt.title("Python vs VHDL low level model 2 on same axis") 
# plt.grid()


# plt.figure(2)
# plt.cla()
# plt.plot(l,z)
# plt.xlabel("x") 
# plt.ylabel("y(x)") 
# plt.title("Ideal Sigmoid Model")
# plt.grid()

# # plt.cla() 
# # plt.xlabel("Samples") 
# # plt.ylabel("Magnitude") 
# # plt.title("Absloute error between Python and VHDL")
# # plt.show() 
# # plt.grid()


# plt.figure(3)
# plt.cla()
# # plt.ylim(0.0334,0.034)
# plt.xlim(-524288,524288)
# plt.plot(xt,error_3)

# plt.ylabel("Percentage Error (%)") 
# plt.xlabel("Samples") 
# plt.title("Absolute error Ideal and Piece wise Sigmoid Model 1")
# plt.show() 
# plt.grid()


# plt.figure(4)
# plt.cla()
# # plt.ylim(0.032,0.0321)
# plt.xlim(-524288,524288)
# plt.plot(data_x,error_4)
# plt.ylabel("Percentage Error (%)") 
# plt.xlabel("Samples") 
# plt.title("Absolute error Ideal and Piece wise Sigmoid Model 2")
# plt.show() 
# plt.grid()



# plt.figure(5)
# plt.cla()
# # plt.plot(xt,yt,'b') 
# plt.plot(data_x+1,data_y+1,'r')
# # plt.plot(data_x,data_y_2,'m')
# # plt.plot(xt2,yt2,'c')
# plt.ylabel("y(x)") 
# plt.title("Piece wise Sigmoid VHDL Low level Model 1") 
# plt.grid()

# plt.figure(6)
# plt.cla()
# # plt.plot(xt,yt,'b') 
# # plt.plot(data_x+1,data_y+1,'r')
# # plt.plot(data_x,data_y_2,'m')
# plt.plot(xt2,yt2,'c')
# plt.ylabel("y(x)") 
# plt.title("Piece wise Sigmoid Python Low level Model 2") 
# plt.grid()


# plt.figure(8)
# plt.cla()
# # plt.plot(xt,yt,'b') 
# # plt.plot(data_x+1,data_y+1,'r')
# plt.plot(data_x,data_y_2,'m')
# # plt.plot(xt2,yt2,'c')
# plt.ylabel("y(x)") 
# plt.title("Piece wise Sigmoid VHDL Low level Model 2") 
# plt.grid()


# plt.figure(7)
# plt.cla()
# plt.plot(ideal_x ,ideal_y ,'g')
# plt.ylabel("y(x)") 
# plt.title("Ideal Sigmoid scaled by 2^16") 
# plt.grid()

# rs=[]
# for i in range(0,1048576):
#     rs.append(0)



# plt.figure(7)
# plt.cla()
# plt.ylim(-1,1)
# plt.title("Error between Python and VHDL Model 1") 
# plt.plot(xt,rs)
# plt.grid()

# plt.figure(8)
# plt.cla()
# plt.ylim(-1,1)
# plt.title("Error between Python and VHDL Model 2") 
# plt.plot(xt,rs)
# plt.grid()