library(tidyverse)
ggplot2::ggplot()
mpg
## 3.3 Aesthetic
ggplot(data=mpg) + geom_point(mapping = aes( x = displ, y = hwy))
ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, color=class) )
ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, size=class) )
ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, shape=class) )
ggplot(data=mpg)+geom_point(mapping = aes(x=displ, y=hwy, alpha=class) )

## 3.5 Facet

## facet_wrap() to facet by single varible and should be discrete
ggplot(data=mpg) + geom_point(mapping=aes(x=displ, y=hwy, color=class)) +
  facet_wrap(~class, nrow=2)
## facet_grid() to facet by combination of two varibles 
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy)) +
  facet_grid(drv~cyl)
## if you prefer not facet in the rows or columns dimensions use . instead of varible name
ggplot(data=mpg) + geom_point(mapping = aes(x=displ, y=hwy)) +
  facet_grid(. ~ cyl)
## my name is abdi