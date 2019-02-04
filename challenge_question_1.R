##The Data Incubator Data Challenge Section 1##

library(plyr)
options(digits=10)

#Read data
FDNY<-read.csv("Incidents_Responded_to_by_Fire_Companies.csv",header=TRUE)
head(FDNY)
attach(FDNY)

#Problem 1
Incident_count<-summary(INCIDENT_TYPE_DESC)
Incident_count
prop_of_common<-max(Incident_count)/sum(Incident_count)
prop_of_common


#Problem 2
N1<-UNITS_ONSCENE[INCIDENT_TYPE_DESC=='111 - Building fire']
N2<-UNITS_ONSCENE[INCIDENT_TYPE_DESC=='651 - Smoke scare, odor of smoke']
mean(N1, na.rm=TRUE)/mean(N2, na.rm=TRUE)


#Problem 3
N3<-summary(BOROUGH_DESC[INCIDENT_TYPE_DESC=='710 - Malicious, mischievous false call, other'])
N3[3]/N3[1]

#Problem 4
x<-INCIDENT_DATE_TIME[INCIDENT_TYPE_DESC=='111 - Building fire']
y<-ARRIVAL_DATE_TIME[INCIDENT_TYPE_DESC=='111 - Building fire']

x<- as.POSIXct(FDNY$INCIDENT_DATE_TIME[INCIDENT_TYPE_DESC=='111 - Building fire'], format='%m/%d/%Y %I:%M:%S %p')
y<- as.POSIXct(FDNY$ARRIVAL_DATE_TIME[INCIDENT_TYPE_DESC=='111 - Building fire'], format='%m/%d/%Y %I:%M:%S %p')

dist<-(y-x)
summary(dist)
q3<-quantile(dist, probs = 0.75, na.rm = TRUE)
q3/60