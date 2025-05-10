from scipy.integrate import solve_ivp
import numpy as np

# Define the differential equation dy/dt = -2y
def dydt(t, y):
    return -2 * y

# Time range and initial condition
t_span = (0, 5)
y0 = [1]

# Solve the ODE
solution = solve_ivp(dydt, t_span, y0, t_eval=np.linspace(0, 5, 100))

# Plot the result
#plt.plot(solution.t, solution.y[0], label='Numerical solution')
#plt.xlabel('Time t')
#plt.ylabel('y(t)')
#plt.title('Solving dy/dt = -2y using solve_ivp')
#plt.legend()
#plt.grid()
#plt.show()
