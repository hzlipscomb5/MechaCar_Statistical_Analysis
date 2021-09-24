# MechaCar_Statistical_Analysis
## Linear Regression To Predict MPG
### Summary 1
- Multiple Linear Regression
![](images/mecha_car_lm.png)
- Summary Statistics of Multiple Linear Regression
![](images/mecha_car_summary.png)
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Using a Statistical Significance Metric of .05, we find two variables with probable non-random variance: 
- Vehicle Length (p-value: 2.6E-12)
- Ground Clearance (p-value: 5.21e-08)
- (Note): Intercept also had a sufficently small p-value to conclude it was not random
### Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the model is not considered to be zero. The combination of the Multiple R-Squared Value (.715) and the miniscule p-value tells us the there is sufficent evidence the slope of our linear model is not zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- In this case it predicts the MPG fairly well. The r-squared value was .715 and the p-value was significant. On the other hand, there is evidence of overfitting, because there is a lack of significant variables out of the six.

## Summary Statistics on Suspension Coil
![](images/susp_totalsum.png)
![](images/susp_lotsum.png)
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- The variance of the total_summary conforms to the specifications, but is over halfway to the limit. Once you take the individual lots into account, it is clear that Lot3 is significantly over the design specs limit(170.3 PSI). Lot3 changes the total average by a significant margin, as Lot1 and Lot2 have minimal variance. 


