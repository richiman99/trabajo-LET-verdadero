library(readr)
library(readxl)
library(dplyr)
library(stringr)
library(lubridate)
library(rio)

corazon= import("codigo/heart_failure_clinical_records_dataset.csv") %>%
  rename(edad=age,anemia=anaemia,creatinina_fosfoquinasa=creatinine_phosphokinase,
         fraccion_eyeccion=ejection_fraction,presion_alta=high_blood_pressure,
         plaquetas=platelets,suero_creatinina=serum_creatinine,sodio_serico=serum_sodium,
         sexo=sex,fumador=smoking,tiempo=time,muerte=DEATH_EVENT)

plot(corazon$edad,corazon$plaquetas,xlab = "edad",ylab = "plaquetas")

hist(corazon$anemia,xlab = "anemia",ylab = "cantidad",main = "gente con anemia")
hist(corazon$muerte,xlab = "muertes",ylab = "cantidad",main = "gente de muertes")
