##Load Libraries ###
library(palmerpenguins)
library(tidyverse)
library(here)
## load data ##

##rows:344
##dplyr ##
filter(.data=penguins,sex=="female")

filter(.data=penguins,sex=="female", body_mass_g>4000)

filter(.data=penguins,sex=="female", body_mass_g> 4000)

filter(.data=penguins,sex=="female" & body_mass_g >4000)

filter(.data=penguins, island %in% c("Dream","Briscoe"))

#convert mass to kg##
#calculate the ratio of bill length to depth##
data2<-mutate(.data=penguins,
              body_mass_kg=body_mass_g/1000,
              bill_length_depth=bill_length_mm/bill_depth_mm)
view(data2)

data3<-mutate(.data=penguins,
              body_mass_kg=body_mass_g/1000,
              bill_length_depth=bill_length_mm/bill_depth_mm)
view(data3)

#4#
data4<-mutate(.data=penguins,
              after_2008=ifelse(year>2008, "After 2008","Before 2008"))
view(data4)


#5#
data5<-mutate(.data=penguins,
              flipper_mass=flipper_length_mm + body_mass_g)
view(data5)


#6 view by sex in Caps#
data6<-mutate(.data=penguins,
              sex_cap=ifelse(sex=="male","Male","Female"))
  
  view(data6)
  
 
  #7 filter only females and add new column#
  penguins %>%
            filter(sex=="female")%>%
            mutate(log_mass=log(body_mass_g))%>%
           select(Species=species,island,SEX=sex,log_mass)
  
 ##summarize and exclude any NAs##
  penguins %>%
    summarize(mean_flipper=mean(flipper_length_mm, na.rm=TRUE))
  
  
  ##summarize and exclude any NAs##
  penguins %>%
    summarize(mean_flipper=mean(flipper_length_mm, na.rm=TRUE),
              min_flipper=min(flipper_length_mm, na.rm=TRUE))
  
  ##summarize and group##
  penguins %>%
    group_by(island, sex)%>%
    summarize(mean_flipper=mean(flipper_length_mm, na.rm=TRUE),
              min_flipper=min(flipper_length_mm, na.rm=TRUE))
  
##remove NAs##
  penguins%>%
    drop_na(sex)%>%
    group_by(island, sex)%>%
    summarize(mean_bill_length=mean(bill_length_mm, na.rm=TRUE))
              

