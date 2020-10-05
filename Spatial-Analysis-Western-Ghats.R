#Map overlay and adding points

##Load Libraries
library(tidyverse)
library(sf)
library(leaflet)
library(mapview)

##Load data
pre_1930 <- st_read("D:\\data")
mapview(pre_1930, crs = 4326, grid = FALSE, col.regions = "yellow")
m1 = mapview(pre_1930, xcol = "LONGITUDE", ycol = "LATITUDE", crs = 4326, grid = FALSE, col.regions = "yellow")

post_1930_1980 <- st_read("D:\\data")
mapview(post_1930_1980, crs = 4326, grid = FALSE, col.regions = "orange")

m2= mapview(post_1930_1980, xcol = "LONGITUDE", ycol = "LATITIDE", crs = 4326, grid = FALSE, col.regions = "orange")

resurvey_2020 <- st_read("D:\\data")

mapview(resurvey_2020, crs = 4326, grid = FALSE, col.regions = "purple")

m3= mapview(resurvey_2020, crs = 4326, grid = FALSE, col.regions = "purple")

buff_1930 <- st_read("D:\\data")

buff_1930_1980 <- st_read("D:\\data")

mapview(buff_1930, crs = 4326, grid = FALSE, col.regions = "grey")

mapview(buff_1930_1980, crs = 4326, grid = FALSE, col.regions = "grey")

m4 = mapview(buff_1930, crs = 4326, grid = FALSE, col.regions = "grey")

m5 = mapview(buff_1930_1980, crs = 4326, grid = FALSE, col.regions = "grey")


##multiple layers or Overlay
### multiple layers

m1 + m2 + m3 + m4 +m5


library(mapview)
library(mapedit)
library(dplyr)
library(sf)
library(tmaptools)


#draw ===============================================================================
drwn = drawFeatures()
mapview(drwn)

drwn = drawFeatures(m1+ m2 + m3 + m4 +m5)
mapview(drwn, col.regions = "red" )
