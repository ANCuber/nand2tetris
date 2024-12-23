from math import sin, cos, radians
radius = 2
d_ax = [-round(radius*cos(radians(i))) for i in range(0, -181, -6)]
d_ay = [-round(radius*sin(radians(i))) for i in range(0, -181, -6)]
print(d_ax)
print(d_ay)
for i in range(31):
    print(f'let AX[{i}] = {d_ax[i]};')
for i in range(31):
    print(f'let AY[{i}] = {-d_ay[i]};')