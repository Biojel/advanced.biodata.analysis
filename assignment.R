# 1) test if local environmental conditions differ significantly between dune and forest habitat

soil <- read.csv(file = "soil.csv")
soil.manova <- manova(cbind(Moisture, OM, pH, P, NO3, NH4)~as.factor(Habitat), data=soil);
summary(soil.manova, test="Wilks");

summary(soil.manova, test="Pillai");
summary(soil.manova, test="Hotelling-Lawley");
summary(soil.manova, test="Roy");

summary(aov(cbind(Moisture, OM, pH, P, NO3, NH4)~as.factor(Habitat), data=soil));

soil_fungi <- read.csv(file = "soil_fungi.csv")






het werkt
