# -*- coding: utf-8 -*-
"""
Created on Tue Sep 22 19:28:51 2020

@author: maazk
"""

###### Basic logic blocks ######
##### AND #####
def AND (a, b):
    if a == 1 and b == 1:
        return 1
    else:
        return 0

##### NAND #####
def NAND (a, b):
    if a == 1 and b == 1:
        return 0
    else:
        return 1
    
##### OR #####
def OR(a, b):
    if a == 1:
        return 1
    elif b == 1:
        return 1
    else:
        return 0
##### XOR #####
def XOR (a, b):
    if a != b:
        return 1
    else:
        return 0
    
##### NOT #####
def NOT(a):
    if(a == 0):
        return 1
    elif(a == 1):
        return 0
    
##### NOR #####
def NOR(a, b):
    if(a == 0) and (b == 0):
        return 1
    elif(a == 0) and (b == 1):
        return 0
    elif(a == 1) and (b == 0):
        return 0
    elif(a == 1) and (b == 1):
        return 0
    
##### XNOR #####
def XNOR(a,b):
    if(a == b):
        return 1
    else:
        return 0
