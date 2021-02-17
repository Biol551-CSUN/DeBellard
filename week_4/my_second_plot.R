##Load Libraries ###
library(palmerpenguins)
library(tidyverse)
library(here)
## load data ##

ggplot(data=penguins,
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     group=species,
                     color=species))+
  geom_point()+
  geom_smooth(method="lm")+
  labs(x="Bill depth(mm)",
       y="Bill length (mm)"
       )+
  scale_colour_manual(values=c("blue","purple","green"))
ggsave(here("Week_3","output","penguin3.png"))

  
######
##new try###
library(wesanderson)
library(devtools)
#install_github("ewenme/ghibli") 
library(ghibli)


ggplot(data=penguins,
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     group=species,
                     color=species))+
  geom_point()+
  geom_smooth(method="lm")+
  labs(x="Bill depth(mm)",
       y="Bill length (mm)"
  )+
  scale_colour_ghibli_d("LaputaMedium", direction = -1)+
  coord_polar("x")+
ggsave(here("Week_3","output","penguin2.png"),
       width=5, height=5)

# display palettes w/ names##
par(mfrow=c(9,3))
for(i in names(ghibli_palettes)) print(ghibli_palette(i))

##new##

ggplot(data=penguins,
       mapping = aes(x=bill_depth_mm,
                     y=bill_length_mm,
                     group=species,
                     color=species))+
  geom_point()+
  geom_smooth(method="lm")+
  labs(x="Bill depth(mm)",
       y="Bill length (mm)"
  )+
  scale_colour_ghibli_d("LaputaMedium", direction = -1)+
                        theme_bw()+
                        theme(axis.title=element_text(size=20),
                        panel.background=element_rect(fill="linen"))+
                              ggsave(here("Week_3","output","penguin.png"),
                                     height=3,width=5)#size is inches by default
                                    
                                                        




