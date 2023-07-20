#################################################
#### MBANDD SFO 2023 | A1: Business Case ########
############### Author: Team #4 ##################
#### Karla Garcia Corral, Antonella Pantoja #######
#### Mary Marmolejo, Franco Queirolo ##############
#### Sandra Aramburu ##############################
############ Date: 4/7/20213 ######################
###################################################

#importing the data set 
library(readxl)
airfrance_data <- read_excel("/Users/karlagarcia/Documents/DD MBAN/12 Visualizing & Analyzing Data with R/Air France Case Spreadsheet Supplement-1.xls", sheet='DoubleClick')

#viewing the data
View(airfrance_data)

### Creating  few data objects
my_obs <- nrow(airfrance_data)
my_var <- ncol(airfrance_data)

# Setting the dimensions 
my_dim <- c(my_obs, my_var)

# Defining the variables
var1 <- airfrance_data$`Publisher Name`
var2 <- airfrance_data$Campaign

# Information Gain: Creating a relationship between 2 different objects 
my_matrix <-matrix(c(var1,var2), nrow=my_cust, ncol=2)



#GOOGLE_US 
#average cost per click 
exp(5.350e-01)-1 #for every additional CPC, the odds of business success will increase by 71% 

#Impressions
exp(-2.604e-05)-1 #for every additional impression, the odds of business success will decrease by 2.6%

#Engine Click Thru %
exp(1.736e-02)-1 #for every additional Engine Click Thru %, the odds of business success will increase by1.75% 


#GOOGLE_GLOBAL
#average cost per click 
exp(1.922e-01)-1 #for every additional CPC, the odds of business success will increase by 21% 

#Engine Click Thru %
exp(-1.834e-02)-1 #for every additional Engine Click Thru %, the odds of business success will decrease by 1.82%

#Average Post
exp(-6.532e-01)-1 #for every additional post, the odds of business success will decrease by 47.9% 


#YAHOO_US
#Engine Click Thru %
exp(8.488e-03)-1 #for every additional Engine Click Thru %, the odds of business success will increase by 0.85% 


#SUCCESSFULL CAMPAIGNS
#clicks
exp(8.939e-03)-1 #for every additional click, the odds of business success will increase by 0.897% 

#Trans conv %
exp(1.184e-01)-1 #for every additional transaction converted online, the odds of business success will increase by 12.6% 

#Total cost/Trans
exp(5.550e-02)-1 #for every additional Cost per Transaction, the odds of business success will increase by 5.70%

#Amount - 
exp(3.378e-04)-1 #for every additional Amount, the odds of business success will increase by 0.03%


