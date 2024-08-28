## Generates Space Aces Classes (Very Cool)
import generator
from Kit import Kit

fileArray = generator.listFolder("./class/") # Grab all classes into an array
kitObjects = []
for file in fileArray: # Loops through the kits and creates object with them
    if ".yaml" in file:
        kit = Kit(generator.readYaml("./class/"+ file))
        kitObjects.append(kit)
        kit.createFiles()
    else:
        print("Ignored file: " + file)
    pass

print(kitObjects)
