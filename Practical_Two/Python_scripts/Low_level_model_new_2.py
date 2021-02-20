import matplotlib.pyplot as plt 


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
          y[i]= int(1/64*x[i]+8192)
    elif ((x[i] >= -262144 and x[i]<= -131072)):
          y[i]= int(1/32 *x[i]+11468)+806 
    elif ((x[i] >= -131072 and x[i]<=-65536)):
          y[i]= int(1/8*x[i]+24576)         
    elif ((x[i] >= -65536 and x[i]<= 65536)):
          y[i]= int(1/4*x[i]+32440)
    elif ((x[i] >= 65536 and x[i]<= 131072)):
          y[i]= int(1/8*x[i]+40960)
    elif ((x[i] >= 131072 and x[i]<= 262144)):
          y[i]= int(1/32*x[i]+52101)+1144 
    elif ((x[i] >= 262144 and x[i]<= 524288)):
          y[i]= int(1/64*x[i]+56688)+658

j=0.9998
v=int(j)
plt.figure(1)
plt.cla()
plt.plot(x,y) 
plt.xlabel("x") 
plt.ylabel("f(x)") 
plt.title("Piece wise Sigmoid")
plt.show() 
plt.grid()

