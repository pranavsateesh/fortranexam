import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
with open('data.txt', 'r') as f:
    lines = f.readlines()
    x = [float(line.split()[0]) for line in lines]
    y = [float(line.split()[1]) for line in lines]
plt.plot(y,x)
plt.ylim(-1,1)
plt.show()