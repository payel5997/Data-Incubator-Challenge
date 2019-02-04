# Data-Incubator-Challenge
Thank you for considering my application to the Data Incubator Fellows program!

The purpose of this repo is to provide the full code and context for my answers to the admissions challenge for the session beginning April 2019.
# Challenge Question 1
R script of challenge question 1 can be found [here](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/challenge_question_1.R)

# Challenge Question 2
Python script for challenge question 2 can be found [here](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/challenge_question_2.py)

# Project Proposal
1. Introduction
The reliability of structures in case of an earthquake depends on the performance of the individual structures and components during and after an earthquake which in turn depends on the structural resilience during the hazard. Between 1985 and 2014, the annual earthquake-related losses have increased from US$ 14 billion to US$ 140 billion and the corresponding average affected population has increased from 60 million people to 179 million people [Ref. 1].
Seismic risk assessment constitutes a key element to support decisions and actions to reduce potential loss of financial resources as well as human life. 

There are three main factors that contribute to effective and realistic risk assessment under seismic hazard conditions:
1. Developing earthquake hazard model that characterizes the magnitude and frequency of occurrence of earthquake events across a region;
2. Gathering and interpreting exposure data sets for location and value of elements exposed;
3. Developing vulnerability functions that establishes the likelihood of loss conditional on shaking intensity or developing fragility functions that establishes the probability of exceedance of a number of damage states conditional on a set of ground motion levels;

Probabilistic Seismic Hazard Assessment (PSHA) is the most commonly used method for seismic hazard and risk assessment to be used as input for various public and financial metrics. The US Geological Survey (USGS) has developed the national seismic hazard maps using PSHA which form the basis of various seismic safety regulations and design standards such as the NEHRP Recommended Provisions for Seismic Regulations for New Buildings and Other Structures [Ref. 2], the 2000 International Building Code [Ref. 3] among others. 

It is proposed to use the USGS Earthquake Hazard catalogue available in USGS website that contains a record of the different earthquake events in US as well as globally over a specified time period to visualize the pattern in the data and predict models for future seismic events. 

2. Goals of the Proposed Project 
The proposed goals can be summarized broadly as follows:
1. Identify the key parameters that constitute the hazard profile for the available database;
2. Visualize the distribution and trends in the hazard parameters as a function of hazard location;
3. Predict better statistical models for the distribution of seismic hazard profile as a function of location and magnitude of earthquake using Bayesian non-linear regression and semi parametric modeling; Using the predicted model as a likelihood function and existing past data as prior information, update the posterior distribution to be used for future prediction of earthquake location and magnitude information
4. Model validation and training using different convergence diagnostics and statistics;

3. Preliminary Analysis and Discussion of Results

For a preliminary study, a representative, comparatively smaller data set from the Earthquake Hazard Catalogue database in USGS website has been chosen. This data corresponds to Conterminous U.S. (Conterminous U.S. refers to a rectangular region including the lower 48 states and surrounding areas which are outside the Conterminous U.S.) for a data range of last six months. The results of the preliminary study are discussed as follows:
1. The magnitude of the different earthquakes are plotted against the location of the earthquake and shown as [3D scatter plot](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/Project_Proposal/plot1a.png) and [3D contour plot](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/Project_Proposal/plot1b.png). As observed from the plot, the distribution of the different magnitude earthquake are typically localized to seismic prone regions. A statistical model based on past data can help to predict future earthquake locations and magnitudes.
2. A simple linear regression model is fit and the model diagnostics are plotted to show the goodness of fit. Plots [2](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/Project_Proposal/Plot2.pdf),[2a](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/Project_Proposal/Plot2a.pdf), and [2b](https://github.com/payel5997/Data-Incubator-Challenge/blob/master/Project_Proposal/Plot2b.pdf) demonstrate the above.

Using data set for the past 10, 20, 50 and 100 years, the statistical model can be improved and this model can be used to fulfill the goals as stated in the project proposal. The past data will also be used to update existing model using Bayesian non-linear regression and semi parametric modeling.

4. Concluding Remarks

Seismic hazard preparedness is key to improving the resilience of structures. The main objective of the proposed project would be use the existing hazard data to improve existing models for hazard prediction that would enable better preparedness and disaster mitigation. Earthquake is only one of the hazard that has been discussed in this proposal. On successful execution of a single hazard prediction model, the same can be extended for other hazards such as fire, flood, tornadoes etc. and develop a multi-hazard prediction model for risk metrics that can be compounded with the local socio-economic conditions in order to provide a holistic representation of natural hazard risks.


5. References

1. Global Facility for Disaster Reduction and Recovery. The Making of a Riskier Future: How Our Decisions are Shaping Future Disaster Risk. Washington D.C.: World Bank
2. Building Seismic Safety Council (BSSC), 1998, NEHRP recommended provisions for seismic regulations for new buildings [1997 ed.]: Federal Emergency Management Agency, FEMA 302, 337 p
3. International Code Council (ICC), 2000, International building code: 678 p.
