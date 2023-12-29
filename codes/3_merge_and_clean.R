# MERGE THE DATA.
year_data <- bind_rows(Jan2023, Feb2023, Mar2023, Apr2023, May2023, Jun2023)

# CLEAN THE DATA.
year_data <- clean_names(year_data)

# REMOVE EMPTY SPACES.
remove_empty(year_data, which = c())

# CREATE NEW COLUMN FOR DAY OF THE WEEK.
year_data$day_of_week <- wday(year_data$started_at, label = T, abbr = T, locale = "en_US.UTF-8")

# SEPARATE HOUR FROM THE DAY INTO NEW COLUMNS.
year_data$starting_hour <- format(as.POSIXct(year_data$started_at), '%H:%M')
year_data$month <- format(as.Date(year_data$started_at), '%m')

# CREATE NEW COLUMN FOR THE TRIP DURATION.
year_data$trip_duration <- difftime(year_data$ended_at, year_data$started_at, units ='sec')



# CLEAN THE DATA ONE LAST TIME VERIFYING IF THE TRIP DURATION IS BIGGER THEN 0
cleaned_data <- year_data[!(year_data$trip_duration<=0),]

# CREATE A CSV OF THE FILE TO EXPORT TO TABLEAU.
write.csv(cleaned_data, file='cyclistic_data (01-06).csv')