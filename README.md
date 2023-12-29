---
title: "CapStone Project - Cyclistic"
author: "Gabriel Gelbcke"
date: "2023-12-21"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

<br>

## Cyclist Project - About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a solid opportunity to convert casual riders into members. She notes that casual riders
are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

<br>

## My mission

As a junior data analyst for Cyclist. My mission is to understand the context/story from our clients and use a proper strategy to **convert casual users to annual members**.

<br>

## Process

### 1. Understanding the problem and installing initial packages
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Downloading and importing dataset
I was only able to get the data from the first 6 months of 2023, due to spacing issues with tableau public. With the data gathered, I ran the code ``str(month)`` to verify the structure of all the tables, to compare if they all have the same datatypes and column names, if they are all equal, it is possible to merge all of the data.


### 3. Merging and cleaning the data
Now is time to clean the data, all of the months have been merged into ``year_data`` variable. After that, two codes were executed to remove empty spaces, parentheses, and etc.
```
year_data <- clean_names(year_data)

remove_empty(year_data, which = c())
```

Besides that, two new columns were created based on the data:

* New column for day of the week.
* Using ``difftime()`` to have the trip duration time in seconds.


When all of the data is cleaned, I have ran the function ``write_csv()`` to generate a CSV file for me to export to Tableau, allowing me to create better visualization options to our project.


<br>


## References

* Dataset: [Click here](https://divvy-tripdata.s3.amazonaws.com/index.html)

<br><br>
