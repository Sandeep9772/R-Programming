library(datapasta)

ind_unemp <- data.frame(
  stringsAsFactors = FALSE,
  check.names = FALSE,
  States = c("Andaman & Nicobar", 
             "Andhra Pradesh",
             "Arunachal Pradesh",
             "Assam",
             "Bihar",
             "Chandigarh",
             "Chhattishgarh",
             "Daman and Diu and Dadra and Nagar Haveli",
             "Delhi",
             "Goa",
             "Gujarat",
             "Haryana",
             "Himachal Pradesh",
             "Jammu and Kashmir",
             "Jharkhand",
             "Karnataka",
             "Kerala",
             "Ladakh",
             "Lakshadweep",
             "Madhya Pradesh",
             "Maharashtra",
             "Manipur",
             "Meghalaya",
             "Mizoram",
             "Nagaland",
             "Odisha",
             "Puducherry",
             "Punjab",
             "Rajasthan",
             "Sikkim",
             "Tamilnadu",
             "Telengana",
             "Tripura",
             "Uttar Pradesh",
             "Uttarakhand",
             "West Bengal"
  ),
  Unemployment = c(8.7, 
                   1.9,
                   13,
                   3.2,
                   10.7,
                   21.4,
                   1.8,
                   28.1,
                   15,
                   15.4,
                   9.4,
                   2,
                   7.5, 
                   15.4,
                   2.2,
                   4.3,
                   0.4,
                   1.1,
                   9.6,
                   6.8,
                   21,
                   0,
                   4.8,
                   4,
                   13.2,
                   5,
                   3.1,
                   7.4,
                   9.6,
                   6.8,
                   21,
                   0,
                   4.8,
                   4,
                   13.2,
                   5)
)


class(shp)
shp.f <- fortify(shp, region = "State_Name")
class(shp.f)

shp.f %>% glimpse()

shp.f %>% select(id) %>%  unique()

ind_unemp %>% glimpse()

summary(ind_unemp)

typeof(ind_unemp)

merge.shp.coef <- shp.f %>%  full_join(ind_unemp, by =c("id" = "States"))

merge.shp.coef %>% glimpse()

#merge.shp.coef$order
final.plot <- merge.shp.coef[order(merge.shp.coef$order), ]

final.plot %>% glimpse()