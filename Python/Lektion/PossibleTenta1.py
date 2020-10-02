import os

dir = "path"

for f in os.listdir(dir):
   s = os.path.join(dir,f)
   print (f"{f} är ----> {os.path.getsize(s)} kb " )