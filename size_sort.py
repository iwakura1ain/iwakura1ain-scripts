#!/usr/bin/python
#low effort wrapper for du -h
import sys, string, re

def calculate_size(line):
        size = 0
        index = 0

        try:
                while(line[index] != " "):
                        if(line[index] == "."):
                                index = index +  1
                                size += (int(line[index]) * 0.1)
                        elif(line[index] == "K"):
                                #break
                                return float(0)
                        elif(line[index] == "M"):
                                size = size*1000
                                break
                        elif(line[index] == "G"):
                                size =  size*1000*1000
                                break
                        elif(line[index] == ""):
                                break
                        else:
                                size = 10*size + int(line[index])
                                
                        index = index + 1

                        
                return float(size)
        
        except ValueError:
                
                return float(0)
        
       
def calculate_size_simple(line):
        size = 0 
        index = 0
        
        while(line[index] == "/" or line[index] == " "):
                size = size*10 + int(line[index])

        return size

def sort(file, ignore_case=None):
        sorted = [" "]
        
        lines = file.readlines()
        for line in lines:
                line_size = calculate_size(line)
                if( (ignore_case != None and line.find(ignore_case) != -1) or line_size == 0):
                        continue
                if(line_size < 100000):
                        continue
                
                
                for i in reversed( range(len(sorted)) ):
                        if(calculate_size(sorted[i]) < line_size):
                                sorted.insert(i+1, line)
                                break
                        
        return sorted
                

def main():
        if(sys.argv[1] == "-h"):
                print("Usage: size_sort.py [option] [dh -h output]")
                print("--ignore [ignore_case]")
                
                sys.exit()
        elif(sys.argv[1] == "--ignore"):
                file = open(str(sys.argv[3]), "r")
                sorted = sort(file, str(sys.argv[2]))
        else:
                file = open(str(sys.argv[1]), "r")
                sorted = sort(file)
             
        for line in sorted:
                print(line)
        

main()




                
