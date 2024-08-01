#!/usr/bin/env python3


import yaml
import os


def createFolder(folder):
    try:
        os.makedirs(folder)
    except:
        #print("Problem creating folder.  Most likely it's a duplicate")
        pass

def recursiveCreateFolder(folder):
    folderList = folder.split("/")
    currentDepth = "."
    for x in range(0,len(folderList)):
        currentDepth = currentDepth + "/" + folderList[x]
        createFolder(currentDepth)

def readYaml(file):
    try:
        with open(file, 'r') as stream:
            try:
                return yaml.safe_load(stream)
            except yaml.YAMLError as exc:
                print(exc)

    except:
        print("A file reading error has occured")

def writeFunction(path,data):
    try:
        file = open(path + ".mcfunction","w")
        file.write(data)
        file.close()
        return True
    except:
        print(f"Couldn't write file: {path}.mcfunction")
        pause = input()
        return False

def appendFunction(path,data):
    try:
        file = open(path + ".mcfunction","a")
        file.write(data)
        file.close()
        return True
    except:
        print("failure")
        return False

def listFolder(path):
    return os.listdir(path)

def loreCreator(string): # Creates lore output based on a string input
    loreTextArray = string.split()
    maxLoreLength = 20
    finalLoreArray = [""]
    finalLoreIndex = 0
    finalLoreCounter = 0
    for word in loreTextArray:
        #print(len(word))
        if len(word) + finalLoreCounter <= maxLoreLength:
            finalLoreCounter += len(word)
            finalLoreArray[finalLoreIndex] = finalLoreArray[finalLoreIndex] + " " + word
            pass
        else:
            finalLoreIndex += 1
            finalLoreCounter = 0
            finalLoreArray.append(word)
            pass
        pass
    pass
