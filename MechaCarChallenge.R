## Dev 1
library(dplyr)
mechcar_df <- read.csv(file='MechaCar_mpg.csv')
head(mechcar_df)
dev1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechcar_df)
summary(dev1)

## Dev2
suspen_df <- read.csv(file="Suspension_Coil.csv")
head(suspen_df)
total_sum <- suspen_df %>% summarize( Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups='keep')
total_sum_grouped <- suspen_df %>% group_by(Manufacturing_Lot) %>% summarize( Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI),.groups='keep')

## Dev3
coil_test <- t.test(suspen_df$PSI,mu=1500)

coil_test_lot1 <- t.test(subset(suspen_df, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
coil_test_lot2 <- t.test(subset(suspen_df, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
coil_test_lot3 <- t.test(subset(suspen_df, Manufacturing_Lot=="Lot3")$PSI,mu=1500)

coil_test_lot3
