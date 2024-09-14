using Pkg
Pkg.add("Plots")
# Import the Plots package
using Plots

# Create some sample data
x = 1:10  # x data from 1 to 10
y = rand(10)  # generate 10 random y data points

# Plot the data
plot(x, y, title = "Contoh Grafik", xlabel = "X-axis", ylabel = "Y-axis", legend = false)

# Show the plot
#display(plot)
