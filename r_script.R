library(dplyr)
library(ggplot2)

nuts_21<- read.csv("nuts_2021.csv", 
                   header=TRUE)

nuts_21 <- nuts_21 %>%
  rename(Code = Code.2021)

##railways

dataset<- read.delim("railways.tsv", 
                     header=TRUE)

# View(dataset)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(railnetwork_km_per_square_17 = X2017, railnetwork_km_per_square_21 = X2021) 

# View(dataset)

merged_dataset_21 <- merge(nuts_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(nuts_21, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)

# View(merged_dataset_21)
# View(merged_dataset_17)

##motorways

dataset<- read.delim("motorways.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(motorway_km_per_square_17 = X2017, motorway_km_per_square_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##stock of vehicle thousands

dataset<- read.delim("stock_vehicles_thou.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(stock_vehicles_17 = X2017, stock_vehicles_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)



##stock of passengers  car thousands

dataset<- read.delim("passenger_vehicle.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(passenger_vehicle_17 = X2017, passenger_vehicle_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##air passengers

dataset<- read.delim("air_passengers.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(air_passengers_17 = X2017, air_passengers_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##freight

dataset<- read.delim("freight.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(freight_17 = X2017, freight_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##crime

dataset<- read.delim("crime.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(crime_17 = X2017, crime_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##unemployment_rate

dataset<- read.delim("unemployment_rate.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(unemployment_rate_17 = X2017, unemployment_rate_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##youth_unemployment_rate

dataset<- read.delim("youth_unemployment_rate.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(youth_unemployment_rate_17 = X2017, youth_unemployment_rate_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##youth_unemployment_ratio

dataset<- read.delim("youth_unemployment_ratio.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(youth_unemployment_ratio_17 = X2017, youth_unemployment_ratio_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


# labor_slack

dataset<- read.delim("labor_slack.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(labor_slack_17 = X2017, labor_slack_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##long-term_unemployment 

dataset<- read.delim("long-term_unemployment.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(long_term_unemployment_17 = X2017, long_term_unemployment_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##economic_activity_rates

dataset<- read.delim("economic_activity_rates.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(economic_activity_rates_17 = X2017, economic_activity_rates_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##avg_worked_hours

dataset<- read.delim("avg_worked_hours.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(avg_worked_hours_17 = X2017, avg_worked_hours_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##avg_worked_usual_hours

dataset<- read.delim("avg_worked_usual_hours.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(avg_worked_usual_hours_17 = X2017, avg_worked_usual_hours_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##compensation_per_employee

dataset<- read.delim("compensation_per_employee.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(compensation_per_employee_17 = X2017, compensation_per_employee_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##gender_employment

dataset<- read.delim("gender_employment.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(gender_employment_17 = X2017, gender_employment_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##employment_high_tech

dataset<- read.delim("employment_high_tech.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(employment_high_tech_17 = X2017, employment_high_tech_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##persons_living_in_households


dataset<- read.delim("persons_living_in_households.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(persons_living_in_households_17 = X2017, persons_living_in_households_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##housing_cost_overburden

dataset<- read.delim("housing_cost_overburden.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(housing_cost_overburden_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##average_number_of_rooms

dataset<- read.delim("average_number_of_rooms.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(average_number_of_rooms_17 = X2017, average_number_of_rooms_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


# inpatient_average_length_of_stay

dataset<- read.delim("inpatient_average_length_of_stay.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(inpatient_average_length_of_stay_17 = X2017, inpatient_average_length_of_stay_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##hospital_discharges_by_diagnosis

dataset<- read.delim("hospital_discharges_by_diagnosis.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(hospital_discharges_by_diagnosis_17 = X2017, hospital_discharges_by_diagnosis_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##hospital_discharges_by_diagnosisp65

dataset<- read.delim("hospital_discharges_by_diagnosisp65.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(hospital_discharges_by_diagnosisp65_17 = X2017, hospital_discharges_by_diagnosisp65_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##physicians

dataset<- read.delim("physicians.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(num_physicians_17 = X2017, num_physicians_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##cultural_employment

dataset<- read.delim("cultural_employment.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(cultural_employment_17 = X2017, cultural_employment_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##household_with_int_access

dataset<- read.delim("household_with_int_access.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(household_with_int_access_17 = X2017, household_with_int_access_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)

##individuals_who_used_int

dataset<- read.delim("individuals_who_used_int.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(individuals_who_used_int_17 = X2017, individuals_who_used_int_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)



##individuals_who_ordered_goods_or_services

dataset<- read.delim("individuals_who_ordered_goods_or_services.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(individuals_who_ordered_goods_or_services_17 = X2017, individuals_who_ordered_goods_or_services_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)



##number_of_establishments_and_bed_places

dataset<- read.delim("number_of_establishments_and_bed_places.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(number_of_establishments_and_bed_places_17 = X2017, number_of_establishments_and_bed_places_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##arrivals_at_tourism_accom

dataset<- read.delim("arrivals_at_tourism_accom.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(arrivals_at_tourism_accom_17 = X2017, arrivals_at_tourism_accom_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)



##arrivals_at_tourism_accom_dom

dataset<- read.delim("arrivals_at_tourism_accom_dom.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(arrivals_at_tourism_accom_dom_17 = X2017, arrivals_at_tourism_accom_dom_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##nights_spend_at_tour_accom_21

dataset<- read.delim("nights_spend_at_tour_accom_21.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(nights_spend_at_tour_accom_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)

##net_occupation_bed_places

dataset<- read.delim("net_occupation_bed_places.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(net_occupation_bed_places_17 = X2017, net_occupation_bed_places_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##at_risk_poverty_rate

dataset<- read.delim("at_risk_poverty_rate.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(at_risk_poverty_rate_17 = X2017, at_risk_poverty_rate_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##at_risk_poverty_or_social_exclusion

dataset<- read.delim("at_risk_poverty_or_social_exclusion.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(at_risk_poverty_or_social_exclusion_17 = X2017, at_risk_poverty_or_social_exclusion_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##disposable_income

dataset<- read.delim("disposable_income.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(disposable_income_17 = X2017, disposable_income_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##early_leavers_from_education

dataset<- read.delim("early_leavers_from_education.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(early_leavers_from_education_17 = X2017, early_leavers_from_education_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##participation_rate_education_train


dataset<- read.delim("participation_rate_education_train.tsv", 
                     header=TRUE)

dataset<- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(participation_rate_education_train_17 = X2017, participation_rate_education_train_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##ratio_portion_tertiary_students_over_pop

dataset<- read.delim("ratio_portion_tertiary_students_over_pop.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(ratio_portion_tertiary_students_over_pop_17 = X2017, ratio_portion_tertiary_students_over_pop_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##life_expectancy_21

dataset<- read.delim("life_expectancy_21.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(life_expectancy_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##fertility_rate

dataset<- read.delim("fertility_rate.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(fertility_rate_17 = X2017, fertility_rate_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##median_age_pop

dataset<- read.delim("population_structure.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(median_age_pop_17 = X2017, median_age_pop_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##median_age_childbirth

dataset<- read.delim("fertility_indicators.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(median_age_childbirth_17 = X2017, median_age_childbirth_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


# population_density

dataset<- read.delim("population_density.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(population_density_17 = X2017, population_density_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##gdp

dataset<- read.delim("gdp.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(gdp_17 = X2017, gdp_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##inability_to_face_unexpected_fin_exp

dataset<- read.delim("inability_to_face_unexpected_fin_exp.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(inability_to_face_unexpected_fin_exp_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##arrears

dataset<- read.delim("arrears.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(arrears_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##inability_to_keep_home_warm

dataset<- read.delim("inability_to_keep_home_warm.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(inability_to_keep_home_warm_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)


##inability_to_have_meat_fish_chicken

dataset<- read.delim("inability_to_have_meat_fish_chicken.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(inability_to_have_meat_fish_chicken_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)



##urbanization_suburbs

dataset<- read.csv2("urbanization_suburbs.csv", 
                    header=TRUE)

dataset <- dataset %>%
  rename(urbanization_suburbs_17 = X2017, urbanization_suburbs_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)

##urbanization_rural
dataset<- read.csv2("urbanization_rural.csv", 
                    header=TRUE)

dataset <- dataset %>%
  rename(urbanization_rural_17 = X2017, urbanization_rural_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)

##urbanization_cities
dataset<- read.csv2("urbanization_cities.csv", 
                    header=TRUE)

dataset <- dataset %>%
  rename(urbanization_cities_17 = X2017, urbanization_cities_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)

##income_S80_S20

dataset<- read.delim("income_S80_S20.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2017, X2021) %>%
  rename(income_S80_S20_17 = X2017, income_S80_S20_21 = X2021) 

merged_dataset_21 <- merge(merged_dataset_21, dataset[, c(1, grep("21$", names(dataset)))], by = "Code", all.x = TRUE)
merged_dataset_17 <- merge(merged_dataset_17, dataset[, c(1, grep("17$", names(dataset)))], by = "Code", all.x = TRUE)


##retirar caracters indesejados

list_char <-  c('u', 'b', 'd', 'p', 'e', 'c', 'z', 'n') #poderia ser uma junção: "bdu"

for (col in names(merged_dataset_21)) {
  for (char in list_char) {
    merged_dataset_21[[col]] <- gsub(char, "", merged_dataset_21[[col]])
  }
  merged_dataset_21[[col]] <- gsub(":", NA, merged_dataset_21[[col]])
}

for (col in names(merged_dataset_17)) {
  for (char in list_char) {
    merged_dataset_17[[col]] <- gsub(char, "", merged_dataset_17[[col]])
  }
  merged_dataset_17[[col]] <- gsub(":", NA, merged_dataset_17[[col]])
}

###########################################
###Análise dos NA

##peso dos NA nas obs totais
# sum(is.na(merged_dataset_17))/(dim(merged_dataset_17)[1]*dim(merged_dataset_17)[2])*100 #18.16%
# sum(is.na(merged_dataset_21))/(dim(merged_dataset_21)[1]*dim(merged_dataset_21)[2])*100 #15.61%

##difernça de variáveis
names(merged_dataset_17) <- gsub("_17$", "", names(merged_dataset_17))
names(merged_dataset_21) <- gsub("_21$", "", names(merged_dataset_21))

# setdiff(names(merged_dataset_17), names(merged_dataset_21))
# setdiff(names(merged_dataset_21), names(merged_dataset_17))
# o ano 2021 tem mais 8 variáveis que 2017:
# housing_cost_overburden, 
# nights_spend_at_tour_accom, 
# life_expectancy, 
# gdp, 
# inability_to_face_unexpected_fin_exp, 
# arrears, 
# inability_to_keep_home_warm, 
# inability_to_have_meat_fish_chicken



##quantas regiões só têm NA's?
#  all_na_17 <- rowSums(is.na(merged_dataset_17)) == (ncol(merged_dataset_17)-1) #o -1 é para não contar a coluna das regiões
#  nrow(merged_dataset_17[all_na_17,][1]) #0
# # 
#  all_na_21 <- rowSums(is.na(merged_dataset_21)) == (ncol(merged_dataset_21)-1)
#  nrow(merged_dataset_21[all_na_21,][1]) #0


##qual a % de NA em cada região
NA_17 <- merged_dataset_17 %>%
  mutate(
    "%_NA" = rowSums(is.na(.))/(ncol(merged_dataset_17)-1)*100
  ) %>%
  select(Code, "%_NA")
# hist_NA_17 <- hist(NA_17$`%_NA`, plot = FALSE)
# hist(NA_17$`%_NA`, breaks = hist_NA_17$breaks, ylim=c(0, 100))

nrow(NA_17 %>% filter(`%_NA`>30))/nrow(NA_17)*100 
#21.99% das obs tem uma % de NA superior a 30%


NA_21 <- merged_dataset_21 %>%
  mutate(
    "%_NA" = rowSums(is.na(.))/(ncol(merged_dataset_21)-1)*100
  ) %>%
  select(Code, "%_NA")
# hist(NA_21$`%_NA`, breaks = hist_NA_17$breaks, ylim = c(0, 100))

nrow(NA_21 %>% filter(`%_NA`>30))/nrow(NA_21)*100 
#10.37% das regiões tem uma % de NA superior a 30%


##transformar em numérico
merged_dataset_21 <- merged_dataset_21 %>%
  mutate(across(-1, as.numeric))

merged_dataset_17 <- merged_dataset_17 %>%
  mutate(across(-1, as.numeric))



##qual a % de NA em cada variável
na_count_17 <- colSums(is.na(merged_dataset_17))
na_percen_17 <- (na_count_17[-1] / nrow(merged_dataset_17)) * 100

# par(mar = c(13, 5, 5, 5))
# barplot(na_percen_17,
#         main = "NA % de 2017",
#         col = "skyblue",
#         las = 2, #rodar a legenda das colunas
#         cex.names = 0.7,
#         ylim = c(0, 100),
#         ylab = "% de NA")
# abline(h = 30 , col = 'red')

na_percen_17 <- data.frame("Count_NA" = na_percen_17)
nrow(na_percen_17 %>% filter(Count_NA>30))/length(names(merged_dataset_17))*100 #27.65%
#
#
na_count_21 <- colSums(is.na(merged_dataset_21))
na_percen_21 <- (na_count_21[-1] / nrow(merged_dataset_21)) * 100

# par(mar = c(13, 5, 5, 5))
# barplot(na_percen_21,
#         main = "NA % de 2021",
#         col = "skyblue",
#         las = 2, #rodar a legenda das colunas
#         cex.names = 0.7,
#         ylim = c(0, 100),
#         ylab = "% de NA")
# abline(h = 30 , col = 'red')

na_percen_21 <- data.frame("Count_NA" = na_percen_21)
nrow(na_percen_21 %>% filter(Count_NA>30))/length(names(merged_dataset_21))*100 #16.36%

##escolhemos 2021
#critério de 20% ou 30% de missing values?
variáveis <- rownames(na_percen_21 %>% filter(Count_NA<=30))
dataset_30<- merged_dataset_21[, c("Code", variáveis)]
# variáveis <- rownames(na_percen_21 %>% filter(Count_NA<=20))
# dataset_20<- merged_dataset_21[, c("Code", variáveis)]
# setdiff(names(dataset_30), names(dataset_20))
#com 30 ficamos com +17 vars
dataset <- dataset_30

###########################################
##multiclinearidade
library(corrplot)
library(caret)

##scatterplot
# pairs(dataset[, 2:15], lower.panel = NULL)
# pairs(dataset[, 16:30], lower.panel = NULL)
# pairs(dataset[, 30:45], lower.panel = NULL)
# pairs(dataset[, 45:50], lower.panel = NULL)
#vemos algumas correlações lineares

##linear correlation
data <- dataset[-1]
correlation <- cor(data, use = "pairwise")
# corrplot(correlation,
#          tl.cex = 0.6)
findCorrelation(correlation, cutoff=0.9)
#8 30 11  7 13 25  3

which(abs(correlation[,25])>=0.9 )
correlation[25,]



variáveis_retirar <- c('unemployment_rate', 'at_risk_poverty_rate', 'avg_worked_usual_hours', 'arrivals_at_tourism_accom', 
                       'passenger_vehicle', 'youth_unemployment_rate')

data_42 <- data[, !(names(data) %in% variáveis_retirar)]
data_42 <- data.frame(scale(data_42))


##Tratamento de NA
sum(is.na(data_42)) #1247



#MICE (Multiple Imputation using Chained Equation)
library(mice)
set.seed(1300)

data_na <- data_42[, colSums(is.na(data_42)) > 0]
data_values <- data_42[, colSums(is.na(data_42)) == 0]

# summary(data_filled)

imputation = mice(data_na, m=1, method = c("pmm"), maxit = 20)

data_filled =complete(imputation)

sum(is.na(data_filled)) #0


data_42 <- cbind(data_values, data_filled)
###########################################
library(mclust)
library(psych)

######## PCA ########
##Bartlett test
correlation <- cor(data_42)
cortest.bartlett(correlation)$p.value <0.05
#como $p.value <0.05 PCA poderá ajudar

##KMO
KMO(data_42)
##baixo MSA (< 0.5)
#number_of_establishments_and_bed_places: 0.35
#urbanization_suburbs: 0.37

##Number of PCs
##D = number of variables (42)
pc42 <- principal(data_42, nfactors=42, rotate="none", scores=TRUE)
#
#Kaiser criterion
plot(pc42$values, type = "b", main = "Scree plot", xlab = "Number of PC", ylab = "Eigenvalue")
#Eigenvalues - Variances of the principal components
#
#Loadings
pc42$loadings

##D = 6 #com base no elbow #67.1%
#Let's rotate the 6 components using varimax
pc6r_42 <- principal(data_42, nfactors=6, rotate="varimax")
pc6r_42$loadings
round(pc6r_42$communality,2)
#<0.5
#net_occupation_bed_places:0.39 (loading:0.465)
#freight: 0.28 (loading:0.332)
#gender_employment: 0.46 (loading:0.432)
#housing_cost_overburden: 0.43 (loading:0.625)
#number_of_establishments_and_bed_places: 0.29 (loading:0.485)
#urbanization_suburbs: 0.46 (loading:-0.370)


######## GUARDAR OS PCAS

data_42$pc1 <- pc6r_42$scores[,1]
data_42$pc2 <- pc6r_42$scores[,2]
data_42$pc3 <- pc6r_42$scores[,3]
data_42$pc4 <- pc6r_42$scores[,4]
data_42$pc5 <- pc6r_42$scores[,5]
data_42$pc6 <- pc6r_42$scores[,6]

data_42$code <- merged_dataset_21[,1]

#######CLUSTER

rcomp <- data_42[,43:48]

library(gpairs)
library (cluster)

gpairs(rcomp)

# método WARD.D2
demodist <- dist(scale(rcomp))
hclust_demo <- hclust(demodist, method = 'ward.D2')
plot(hclust_demo, label = merged_dataset_21[,1], hang =-1)

groups.k6 <- cutree(hclust_demo, k=6)
rect.hclust(hclust_demo, k = 6, border = "red")

#silhoutte
plot(silhouette(groups.k6, demodist))

clp <- clPairs(rcomp,groups.k6)
clPairsLegend(0.85, 0.3, class = unique(groups.k6), 
              col = clp$col, pch = clp$pch, 
              title = "Ward Pairs")

# método complete
demodist_c <- dist(scale(rcomp))
hclust_demo_c <- hclust(demodist_c)
plot(hclust_demo_c, label = merged_dataset_21[,1], hang =-1)

groups.k7_c <- cutree(hclust_demo_c, k=7)
rect.hclust(hclust_demo_c, k = 7, border = "red")

clp <- clPairs(rcomp,groups.k7_c)
clPairsLegend(0.85, 0.3, class = groups.k7_c, 
              col = clp$col, pch = clp$pch, 
              title = "Complete Pairs")

#silhoutte
plot(silhouette(groups.k7_c, demodist_c))

#K-means

kmeans.k7 <- kmeans(rcomp,6, nstart=100)
attributes(kmeans.k7)
kmeans.k7$centers
kmeans.k7$size
table(groups.k6, kmeans.k7$cluster)
plot(silhouette(kmeans.k7$cluster, demodist))


# elbow criterion
wssplot <- function(xx, nc=15, seed=1234){
  wss <- (nrow(rcomp)-1)*sum(apply(rcomp,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(xx, centers = i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters", 
       ylab="Within groups sum of squares")}

wssplot(rcomp, nc=10)

kmeans.k7 <- kmeans(rcomp,7, nstart=100)
attributes(kmeans.k7)
kmeans.k7$centers
kmeans.k7$size
kmeans.k7$cluster
table(groups.k6, kmeans.k7$cluster)
plot(silhouette(kmeans.k7$cluster, demodist))

clp <- clPairs(rcomp, classification = kmeans.k7$cluster)
clPairsLegend(0.85, 0.3, 
              unique(kmeans.k7$cluster), 
              col = clp$col, pch = clp$pch, 
              title = "Kmeans pairs")



cluster_sizes <- table(kmeans.k7$cluster)  
largest_cluster <- as.numeric(names(which.max(cluster_sizes)))

rcomp_largest <- rcomp[kmeans.k7$cluster == largest_cluster, ]
cluster_largest <- kmeans.k7$cluster[kmeans.k7$cluster == largest_cluster]  

unique_clusters <- unique(kmeans.k7$cluster)


for (cluster_id in unique_clusters) {
  rcomp_cluster <- rcomp[kmeans.k7$cluster == cluster_id, ]
  cluster_current <- kmeans.k7$cluster[kmeans.k7$cluster == cluster_id]
  num_obs <- nrow(rcomp_cluster)
  
  clp2 <- clPairs(rcomp_cluster, classification = cluster_current, col = rainbow(1))
  clPairsLegend(0, 1, 
                unique(cluster_current), 
                col = clp2$col, pch = clp2$pch, 
                title = paste("Cluster", cluster_id, "-", num_obs, "obs."))
}


rcomp_nuts <- merged_dataset_21[,1]

#
o <- order(kmeans.k7$cluster)
data.frame(rcomp_nuts[o], kmeans.k7$cluster[o])
plot(rcomp$pc1, rcomp$pc2, type = "n",
     xlim=c(-3,4),
     xlab = "pc1",
     ylab="pc2")
text(x=rcomp$pc1, y=rcomp$pc2, labels=rcomp$code, col=kmeans.k7$cluster+1)


#PAM clustering
pam.k7 <- pam(rcomp,7)

table(groups.k6, pam.k7$clustering)
plot(rcomp$pc1, rcomp$pc2,
     type ="n",
     xlim = c(-4,6),
     xlab = "pc1",
     ylab="pc2")
text(x=rcomp$pc1, y=rcomp$pc2, labels=pam.k7$clustering, col=pam.k7$clustering+1)

clp <- clPairs(rcomp, classification = pam.k7$cluster, col = rainbow(7))
clPairsLegend(0.85, 0.3, 
              unique(pam.k7$clustering), 
              col = clp$col, pch = clp$pch, 
              title = "PAM pairs")
plot(pam.k7, which.plot = 2)

# Gaussian mixture model
library('mclust')

# Model selection
BIC <- mclustBIC(rcomp)
plot(BIC)

# Model estimation
results_g <- Mclust(rcomp, x = BIC)
summary(results_g, parameters = TRUE)

# Classification
plot(results_g, what = "classification")
#table(class, results_g$classification)
plot(results_g, what = "uncertainty")
plot(results_g, what = "density")
#usou 7 clusters

set.seed(1233)
results.k6 <- Mclust(rcomp, G = 6)
summary(results.k6, parameters = TRUE)

# Plot results
plot(results.k6, what = "density")
plot(results.k6, what = "uncertainty")

#clp <- clPairs(rcomp, results.k6$classification)
clPairs(rcomp, classification = results.k6$classification, col = rainbow(7))

clPairsLegend(0.85, 0.3, unique(results.k6$classification), 
              col = clp$col, pch = clp$pch, 
              title = "Clusters GMM")

gmm_clusters <- results.k6$classification

dist_matrix <- dist(rcomp, method = "euclidean")

sil <- silhouette(gmm_clusters, dist_matrix)

plot(sil, border = NA, main = "Silhouette Plot - GMM Clusters")

##################### Profile

library(readxl)
library(stringr)

nuts<-read.csv("nuts_2021.csv", 
               header=TRUE)

nuts_21 <- nuts %>%
  rename(Code = Code.2021)

############ GERD ##########################
dataset<- read.delim("gerd_million_eur.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gerd_million_eur = X2021) 

perfil_data <- merge(nuts_21, dataset, by = "Code", all.x = TRUE)

###
dataset<- read.delim("gerd_ppp.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gerd_ppp = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

###
dataset<- read.delim("gerd_habitantes.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gerd_habitantes = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)


################# INCOME OF HOUSEHOLDS #####################

dataset<- read.delim("income_taxes_paid_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(income_taxes_paid_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)


#
dataset<- read.delim("income_compensation_received_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(income_compensation_received_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)


#
dataset<- read.delim("income_balance_received_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(income_balance_received_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

#
dataset<- read.delim("income_social_received_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(income_social_received_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)



#####################GVA BASIC#############

dataset<- read.delim("gva_basic_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gva_basic_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)


#################### COMPENSATION EMPLOYEE ################

dataset<- read.delim("compensation_employee_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(compensation_employee_million_eur = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

#################### REAL LABOUR ###############

dataset<- read.delim("real_labour_per_person_index.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(real_labour_per_person_index = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

#
dataset<- read.delim("real_labour_per_hour_index.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(real_labour_per_hour_index = X2021)

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)


############### GROSS CAPITAL FORMATION ################

dataset<- read.delim("gross_fixed_capital_million_eur.tsv", 
                     header=TRUE)
dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gross_fixed_capital_million_eur = X2021)

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

############ GDP ################

dataset<- read.delim("gdp.tsv", 
                     header=TRUE)

dataset <- dataset %>%
  mutate(Code = sub(".*,", "", dataset[, 1])) %>%
  select(Code, X2021) %>%
  rename(gdp_21 = X2021) 

perfil_data <- merge(perfil_data, dataset, by = "Code", all.x = TRUE)

######## COUNTRY ###########

perfil_data <- perfil_data %>%
  mutate(
    country = substr(Code, 1, 2)
  )

############# CAPITAIS ############

capitais <- read_excel("NUTS_2_with_capitals.xlsx")

perfil_data <- merge(perfil_data, capitais, by = "Code", all.x = TRUE)

############ LOCATION ############

location <- read_excel("nuts_location.xlsx")

perfil_data <- merge(perfil_data, location, by = "Code", all.x = TRUE)

########### ISLAND ##############

island <- read_excel("nuts_island.xlsx")

perfil_data <- merge(perfil_data, island, by = "Code", all.x = TRUE)




############ LIMPEZA ##################

list_char <-  c('u', 'b', 'd', 'p', 'e', 'c', 'z', 'n') #poderia ser uma junção: "bdu"


for (col in names(perfil_data [,-c(1,15, 17)])) {
  for (char in list_char) {
    perfil_data[[col]] <- gsub(char, "", perfil_data[[col]])
  }
  perfil_data[[col]] <- gsub(":", NA, perfil_data[[col]])
}

names(perfil_data) <- gsub("_21$", "", names(perfil_data))

##turn into numeric o de 2021
perfil_data <- perfil_data %>%
  mutate(across(c(-1,-15, -17), as.numeric))


#para tirar as colunas com NA's
perfil_data <- perfil_data %>% select(where(~ all(!is.na(.))))


######## MAPAS ##########
library(eurostat)
library(sf)
library(tmap)
library(dplyr)
library(giscoR)

#Renomear coluna para merge
perfil_data <- perfil_data %>%
  rename(geo = Code)

geodata <- get_eurostat_geospatial(nuts_level = 2, year = 2021)

#Juntar dados
map_data <- inner_join(geodata, perfil_data, by = "geo")

#Filtrar com as regiões fora da Europa
map_data_filtered <- map_data %>%
  filter(!geo %in% c("ES70", "FRY1", "FRY2", "FRY3", "FRY4","FRY5" ))


# Lista das variáveis contínuas
continuous_variables <- c(
  "income_compensation_received_million_eur",
  "gva_basic_million_eur",
  "compensation_employee_million_eur",
  "real_labour_per_person_index",
  "real_labour_per_hour_index",
  "gross_fixed_capital_million_eur",
  "gdp",
  "country",
  "location"
)

#Variáveis binárias
binary_variables <- c("capital", "island")

# Converter variáveis binárias em fatores
map_data_filtered <- map_data_filtered %>%
  mutate(across(all_of(binary_variables), as.factor))


# Função para criar mapa de variáveis contínuas (com Set1)
generate_continuous_map <- function(data, variable, title) {
  tm_shape(data, projection = "EPSG:3035") +
    tm_polygons(
      col = variable,
      title = title,
      palette = "Set1",  # Set1 aplicado aqui
      border.col = "white"
    ) +
    tm_layout(legend.outside = TRUE)
}

# Função para criar mapa de variáveis binárias (com Set1)
generate_binary_map <- function(data, variable, title) {
  tm_shape(data, projection = "EPSG:3035") +
    tm_polygons(
      col = variable,
      title = title,
      palette = "Set1",  # Set1 aplicado aqui
      border.col = "white",
      style = "cat"  # Para variáveis categóricas
    ) +
    tm_layout(legend.outside = TRUE)
}

# Mapas para variáveis contínuas
for (var in continuous_variables) {
  title <- paste("Mapa de", var)
  map <- generate_continuous_map(map_data_filtered, var, title)
  print(map)
}

# Mapas para variáveis binárias
for (var in binary_variables) {
  title <- paste("Mapa de", var)
  map <- generate_binary_map(map_data_filtered, var, title)
  print(map)
}




# Geodata original
tm_shape(geodata) +
  tm_borders() +
  tm_layout(title = "Mapa Base - NUTS2")


################ MAPAS COM CLUSTERS ####################
#Adicionando clusters ao dataset
perfil_data$cluster <- as.factor(kmeans.k7$cluster)

map_data <- inner_join(geodata, perfil_data, by = "geo")
map_data_filtered <- map_data %>%
  filter(!geo %in% c("ES70", "FRY1", "FRY2", "FRY3", "FRY4", "FRY5"))

generate_cluster_map <- function(data, title) {
  tm_shape(data, projection = "EPSG:3035") +
    tm_polygons(
      col = "cluster",  # Coluna dos clusters
      title = title,
      palette = "Set1",  # Paleta de cores
      border.col = "white",
      legend.show = TRUE,
    ) +
    tm_layout(
      legend.outside = TRUE,
      main.title = title,  # Título global
      main.title.size = 1.2
    )
}

generate_cluster_map(map_data_filtered, "Mapa de clusters")

# Extrair dados tabulares (sem geometria) do objeto com o mapa
cluster_table <- map_data %>%
  st_drop_geometry() %>%  # Remove as informações espaciais
  select(geo, cluster) %>%  # Seleciona códigos NUTS (geo) e os clusters
  arrange(cluster)  # Ordena por cluster

# Visualizar a tabela completa
print(cluster_table)

# Agrupar as regiões NUTS por cluster
cluster_summary <- cluster_table %>%
  group_by(cluster) %>%
  summarise(regions = paste(geo, collapse = ", "))

###TESTES
# Função para criar o mapa com labels dos clusters
generate_cluster_map_with_labels <- function(data, title) {
  tm_shape(data, projection = "EPSG:3035") +
    tm_polygons(
      col = "cluster",  # Cor com base no cluster
      palette = "Set1",  # Paleta de cores
      border.col = "white"
    ) +
    tm_text("geo", size = 0.5, col = "black") +  # Adicionar o cluster como texto
    tm_layout(
      legend.outside = TRUE,
      main.title = title,
      main.title.size = 1.2
    )
}

# Gerar o mapa com labels dos clusters
generate_cluster_map_with_labels(map_data_filtered, "Mapa de Clusters com Labels")

library(writexl)
write_xlsx(perfil_data, "perfil_data.xlsx")


# Gerar mapas com base nos clusters e sobreposição de variáveis
generate_cluster_map <- function(data, variable, title) {
  tm_shape(data, projection = "EPSG:3035") +  # Projeção recomendada para Europa
    tm_polygons("cluster", palette = "Set1", title = "Cluster") + # Cores representam os Clusters
    tm_bubbles(size = variable, col = "black", alpha = 0.5, title.size = title) + # Variável adicional
    tm_layout(
      legend.outside = TRUE,
      main.title = paste("Mapa Geoespacial dos Clusters -", title),
      main.title.size = 1.2
    )
}

# Mapas geoespaciais para GDP e Income Compensation
map_gdp <- generate_cluster_map(map_data_filtered, "gdp", "GDP")
map_income <- generate_cluster_map(map_data_filtered, "income_compensation_received_million_eur", "Income Compensation")

# Visualizar os mapas
print(map_gdp)
print(map_income)

