import os 
import glob
os.chdir('../astro250/data/')
n =0
for i in glob.glob("*.fits"):
	filename = i.split(".")[0]
	if os.path.isfile(filename+'.w.cat'):
		print "not matched"
		n=n+1
print n
