# ChaoticMotion
Processing project for a chaotic motion simulator

These files contains code to simulate a chaotic motion machine.

Circles are generated to rotate at variable speeds around the previous circle in the array. Circles are numbered to differentiate between
each individual circle.

When running, the rotation speed changes are you move your mouse to the left/right. The farther in either direction, the quicker the speed.
Crossing the center will make the circles begin rotating in the opposite direction relative to how they move on the side of the window you
start from.

The number of circles can be modified by changing the size of the "circles" array on line 1 of ChaoticMotion.pde. The number of circles
displayed will be sizeOfArray-1. i.e. if you change the size to 10, 9 circles will be displayed when you execute the code.
