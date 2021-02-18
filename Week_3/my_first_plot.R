library(palmerpenguins)
library(tidyverse)

ggplot(data=penguins,
       mapping=aes(x=bill_depth_mm,
                   y=bill_length_mm,
                   color=species,
                          ))+
  geom_point()+
    labs(title="Bill depth and length",
       subtitle="Dimensions for Adelie, Chinstrap and Gentoo Penguins",
       x= "Bill depth (mm)",y="Bill length (mm)",
       color="species",
  caption="Source:Palmer Station LTER/palemrpenguinpackage"
  )+
  scale_color_viridis_d()
  


