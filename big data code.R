BCDonorEmail <- read.csv("~/Downloads/BCDonorEmail.csv")
>   View(BCDonorEmail)

narrow <- subset(BCDonorEmail, ugrad_year>2005)
LTW <- subset(narrow, campaign == "Light the World")

since2006 <- subset(bcstudent, ugrad_year > 2005)

table(since2006$work_state)

table(LTW$work_state)

table(LTW$work_state, LTW$email_open == 1)

table(LTW$work_state, LTW$click == 1)

table(Annualgiving$work_state)

table(Annualgiving$work_state, Annualgiving$email_open == 1) 

table(Annualgiving$work_state, Annualgiving$click == 1)

table(Annualgiving$work_state,Annualgiving$lifetime_cash>0)

blue_state <- subset(narrow,work_state=="MA"|work_state=="NY"|work_state=="CA"|work_state=="CO"|work_state=="CT"|work_state=="DE"|work_state=="DC"|work_state=="HI"|work_state=="IL"|work_state=="ME"|work_state=="MD"|work_state=="MN"|work_state=="NV"|work_state=="NM"|work_state=="NH"|work_state=="NJ"|work_state=="OR"|work_state=="RI"|work_state=="VT"|work_state=="VI"|work_state=="WA")
red_state <- subset(narrow,work_state=="AL"|work_state=="AK"|work_state=="AZ"|work_state=="AR"|work_state=="FL"|work_state=="GA"|work_state=="ID"|work_state=="IN"|work_state=="KS"|work_state=="KY"|work_state=="IA"|work_state=="LA"|work_state=="MS"|work_state=="MI"|work_state=="MO"|work_state=="MT"|work_state=="NE"|work_state=="OH"|work_state=="NC"|work_state=="ND"|work_state=="OK"|work_state=="SC"|work_state=="WI"|work_state=="SD"|work_state=="TN"|work_state=="TX"|work_state=="UT"|work_state=="WV"|work_state=="WY")

table(blue_state$email_open)
table(red_state$email_open)
table(red_state$click)
table(blue_state$click)
mean(red_state$lifetime_cash)
mean(blue_state$lifetime_cash)

coastal_state <- subset(narrow,work_state=="MA"|work_state=="NY"|work_state=="CA"|work_state=="CT"|work_state=="DE"|work_state=="FL"|work_state=="HI"|work_state=="ME"|work_state=="MD"|work_state=="NH"|work_state=="NJ"|work_state=="OR"|work_state=="RI"|work_state=="VI"|work_state=="TX"|work_state=="LA"|work_state=="MS"|work_state=="AL"|work_state=="GA"|work_state=="SC"|work_state=="NC"|work_state=="AK")
landlock_state <- subset(narrow,work_state=="ID"|work_state=="MT"|work_state=="WY"|work_state=="UT"|work_state=="AZ"|work_state=="CO"|work_state=="NM"|work_state=="ND"|work_state=="SD"|work_state=="NE"|work_state=="KS"|work_state=="OK"|work_state=="MN"|work_state=="IA"|work_state=="MO"|work_state=="AR"|work_state=="WI"|work_state=="MI"|work_state=="IN"|work_state=="KY"|work_state=="TN"|work_state=="OH"|work_state=="WV"|work_state=="PA"|work_state=="VT")

table(coastal_state$email_open)
table(landlock_state$email_open)
table(coastal_state$click)
table(landlock_state$click)
mean(coastal_state$lifetime_cash)
mean(landlock_state$lifetime_cash)