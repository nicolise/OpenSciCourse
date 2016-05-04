library(pwr)

library(dplyr)

data %>%
  group_by(gend_gendobs) %>%
  tally()

detectable <- pwr.t2n.test(n1 = 24, n2 = 54, d = NULL, sig.level = .05, power = .8, alternative = "two.sided")

pwr.t2n.test(n1 = 24, n2 = 54, d = .5, sig.level = .05, power = NULL, alternative = "two.sided")

