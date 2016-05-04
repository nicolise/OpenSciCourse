library(pwr)

library(dplyr)

data %>%
  group_by(gend_gendobs) %>%
  tally()

#want 80% power, what effect size can I detect? If effect size > 0.6, study has sufficient power.
detectable <- pwr.t2n.test(n1 = 24, n2 = 54, d = NULL, sig.level = .05, power = .8, alternative = "two.sided")

#adding covariates can account for noise, increase power

pwr.t2n.test(n1 = 24, n2 = 54, d = .5, sig.level = .05, power = NULL, alternative = "two.sided")

#use power analysis to make decisions about statistical design, study design
