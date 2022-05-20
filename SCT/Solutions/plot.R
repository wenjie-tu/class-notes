library(ggplot2)

lvls <- c("u", "v", "x", "z", "y", "w")
d.plot <- data.frame(
  x=c("u", "v", "x", "z", "y", "w"), 
  y=c(1, 2, 4, 5, 3, 2)
)

ggplot(d.plot, aes(x=1:6, y=y)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 6) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())



lvls <- c("u", "x", "z", "y", "w", "v")
d.plot <- data.frame(
  x=c("u", "x", "z", "y", "w", "v"), 
  y=c(1, 4, 5, 3, 2, 2)
)

ggplot(d.plot, aes(x=1:6, y=y)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 6) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())






lvls <- c("x", "w", "y", "z", "v")
d.plot <- data.frame(
  x=c("x", "w", "y", "z", "v"), 
  y=c(1, 2, 3, 2, 1)
)

ggplot(d.plot, aes(x=1:5, y=y)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 4) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())






lvls <- c("v", "w", "y", "z", "x")
d.plot <- data.frame(
  x=c("v", "w", "y", "z", "x"), 
  y=c(2, 2, 3, 2, 1)
)

ggplot(d.plot, aes(x=1:5, y=y)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 4) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())










lvls <- c("z", "x", "y")
d.plot <- data.frame(
  x=rep(c("z", "x", "y"), times=3), 
  y=c(1, 5, 3, 3, 1, 4, 2, 3, 5), 
  Person=rep(c("Person 1", "Person 2", "Person 3"), each=3)
)
ggplot(d.plot, aes(x=rep(1:3, times=3), y=y, color=Person)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 6) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())







lvls <- c("x", "y", "z")
d.plot <- data.frame(
  x=rep(c("x", "y", "z"), times=3), 
  y=c(4, 2, 1, 1, 4, 3, 3, 5, 2), 
  Person=rep(c("Person 1", "Person 2", "Person 3"), each=3)
)
ggplot(d.plot, aes(x=rep(1:3, times=3), y=y, color=Person)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 6) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())






lvls <- c("z", "y", "x", "w")
d.plot <- data.frame(
  x=rep(c("z", "y", "x", "w"), times=3), 
  y=c(2, 3, 4, 5, 3, 4, 5, 1, 4, 5, 3, 2), 
  Preferences=rep(c("Type 1", "Type 2", "Type 3"), each=4)
)
ggplot(d.plot, aes(x=rep(1:4, times=3), y=y, color=Preferences)) + 
  geom_point(aes(x=factor(x, levels=lvls)), size=2) + 
  geom_line(lty="longdash") + ylim(0, 6) + theme_minimal() + 
  theme(axis.line.y=element_blank(), axis.text.y=element_blank(), 
        axis.ticks.y=element_blank(), axis.title=element_blank())