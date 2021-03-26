#!/usr/bin/python3
from time import time

def bubble_sort(nummer):
    length = len(nummer) - 1
    stop = length
    while stop > 0:
        i = 0
        while i < length:
            if nummer[i] > nummer[i+1]:
                tmp = nummer[i]
                nummer[i] = nummer[i+1]
                nummer[i+1] = tmp
            i += 1
        stop -= 1
    return nummer

def insertion_sort(nummer: list[int]):
    new_nummer = []
    while len(nummer) > 0:
        smallest = None
        for item in nummer:
            if smallest == None or item < smallest:
                smallest = item

        if smallest != None:
            nummer.remove(smallest)
        new_nummer.append(smallest)
    return new_nummer

def quick_sort(numbers: list[int]):
    if len(numbers) < 2:
        return numbers
    
    pivot_index = len(numbers)//2

    

with open("randomized_list.txt") as file:
    nummer = map(int, file.readlines())
    nummer = list(nummer)
    orig_nummer = nummer.copy()
    start = time()
    bubble_sort(nummer)
    print(f"Bubble sort tog {time()-start} sekunder")
    nummer = orig_nummer.copy()
    start = time()
    insertion_sort(orig_nummer)
    print(f"Selection sort tog {time()-start} sekunder")
