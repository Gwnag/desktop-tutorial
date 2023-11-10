def selectionSort(list):
    for i in range(len(list)):

        
        min_idx=i
        for j in range(i+1,len(list)):
            if list[min_idx]>list[j]:
                min_idx=j
        
        list[i],list[min_idx]=list[min_idx],list[i]


def bubbleSort(list):
    n=len(list)

    
    for i in range(n):

        
        for j in range(0,n-i-1):

            
            if list[i]>list[j+1]:
                list[j],list[j+1]=list[j+1],list[j]

 

def insertionSort(list):

    for i in range(1,len(list)):

        key=list[i]

        
        j=i-1
        while j>=0 and key<list[j]:
               list[j+1]=list[j]
               j-=1
        list[j+1]=key


#1-7 sorting 함수
def sort_fx(list):
    return sorted(list)

import random
import time


random_list=list(i for i in range(10000))
random.shuffle(random_list)

list_1=random_list.copy()
list_2=random_list.copy()
list_3=random_list.copy()
list_4=random_list.copy()

a=time.time()
selectionSort(list_1)
b=time.time()
print("1-1수행시간:",b-a)

a=time.time()
selectionSort(list_2)
b=time.time()
print("1-2수행시간",b-a)

a=time.time()
selectionSort(list_3)
b=time.time()
print("1-3수행시간",b-a)

a=time.time()
selectionSort(list_4)
b=time.time()
print("1-7수행시간",b-a)





