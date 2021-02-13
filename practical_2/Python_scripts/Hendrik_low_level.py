import numpy as np
import matplotlib.pyplot as plt
 
    # def float_bin(number, places = 8): 
    # 	whole, dec = str(number).split(".") 
    
    # 	whole = int(whole) 
    # 	dec = int (dec) 
    # 	res = bin(whole).lstrip("0b") + "."
    
    # 	for x in range(places): 
    # 		whole, dec = str((decimal_converter(dec)) * 2).split(".") 
    # 		dec = int(dec) 
    # 		res += whole 
    # 	return res 
    
    # def decimal_converter(num): 
    # 	while num > 1: 
    # 		num /= 10
    # 	return num 
    
    # def get_lenght(h):
    #     k=0
    #     for i in h:
    #         k=k+1
    #     return k

# def Convert_to_fixed_point_array(x):
    
#     inputvalue=float_bin(abs(x))

#     whole=[]
#     dec=[]
#     Input_magnitude_comparator=[]
#     j=0
#     switch=0
#     while (j<8):
    
#         if(inputvalue[j]=='.'):
#             switch=1
#             j=j+1
    
#         if (switch==0):
#             whole.append(int(inputvalue[j]))
#             j=j+1
#         elif(switch==1):
#             dec.append(int(inputvalue[j]))
#             j=j+1   
            
#     real_lenght=get_lenght(whole)
#     extra_zero=4-real_lenght

#     for i in range(0,extra_zero):
#         Input_magnitude_comparator.append(0)
#     for i in range(0,real_lenght):
#         Input_magnitude_comparator.append(whole[i])
#     for i in range(0,3):
#         Input_magnitude_comparator.append(dec[i])
#     return Input_magnitude_comparator
    
def Magnitude_comparator(x):
    
    Z=[]
    if (abs(x)>=327680):
        Z=[0,0,0,1]
    elif(155648<=abs(x) and abs(x)<327680):
        Z=[0,0,1,0]
    elif(65536<=abs(x) and abs(x)<155648):
        Z=[0,1,0,0]
    elif(0<=abs(x) and abs(x)<65536):
        Z=[1,0,0,0]
    return(Z)


def DTXY(x,Z):
    if Z==[0,0,0,1]:
        y=65536
    elif Z==[0,0,1,0]:
        y=abs(x)/32 +55296
    elif Z==[0,1,0,0]:
        y=abs(x)/8 +40960
    elif Z==[1,0,0,0]:
        y=abs(x)/4 + 32768
    
    if x<0:
        y=65536-y
    return y
    

#######################################################################################
# Create an input array of 1000 000 between the values of -8 and 8
#######################################################################################
x=[]
y=[]

for i in range(0,1048576):
    x.append(0)

x[0]=-524288
for i in range (0,1048576-1):
    x[i+1]=x[i]+1

for i in range(0,1048576):
    y.append(0)
#######################################################################################
for i in range(0,1048576):
    Z =Magnitude_comparator(x[i])
    y[i]=DTXY(x[i],Z)
    
plt.figure(1)
plt.title("PLAN method by I. Tsmots et al (2019)")
plt.ylabel('f(x)')
plt.xlabel('x')
plt.grid()
plt.plot(x,y)
    
    



    