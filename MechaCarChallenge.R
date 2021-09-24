library(dplyr)
library(tidyverse)
mecha_car_df <- read.csv('MechaCar_mpg.csv') #importing dataset

lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df) #generate multiline regression model

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)) #summary function of our regression model

suspension_coil_table <- read.csv('Suspension_Coil.csv')

total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance =var(PSI), SD =sd(PSI), .groups = 'keep') #createtotalsummarydf

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance =var(PSI), SD =sd(PSI), .groups = 'keep') #creatlotsummary



                               

