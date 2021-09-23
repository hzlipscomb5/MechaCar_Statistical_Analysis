library(dplyr)
mecha_car_df <- read.csv('MechaCar_mpg.csv') #importing dataset

lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df) #generate multiline regression model

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)) #summary function of our regression model
