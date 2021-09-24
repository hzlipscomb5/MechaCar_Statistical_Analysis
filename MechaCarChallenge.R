library(dplyr)
library(tidyverse)
mecha_car_df <- read.csv('MechaCar_mpg.csv') #importing dataset

lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df) #generate multiline regression model

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car_df)) #summary function of our regression model

suspension_coil_table <- read.csv('Suspension_Coil.csv')

total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance =var(PSI), SD =sd(PSI), .groups = 'keep') #createtotalsummarydf

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median =median(PSI), Variance =var(PSI), SD =sd(PSI), .groups = 'keep') #createlotsummary

t.test((suspension_coil_table$PSI), mu=1500)#t.test all lots

lot1_set = subset(suspension_coil_table, Manufacturing_Lot == "Lot1") #createlot1subset
t.test((lot1_set$PSI), mu=1500) #lot1 t.test

lot2_set= subset(suspension_coil_table, Manufacturing_Lot == "Lot2") #createlot2subset
t.test((lot2_set$PSI), mu=1500) #lot2 t.test

lot3_set= subset(suspension_coil_table, Manufacturing_Lot == "Lot3") #createlot3subset
t.test((lot3_set$PSI), mu=1500) #lot3 t.test
                            
