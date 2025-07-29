**#Credit Card Transaction Analysis-Power**

**##Project objective**

To develop a comprehensive credit
card weekly dashboard that
provides real-time insights into key
performance metrics and trends,
enabling stakeholders to monitor
and analyze credit card operations
effectively

**##Data from SQL**

(i) Prepare csv file
(ii)Create tables in SQL
(iii) import csv file into SQL

#Data processing & DAX

(i) AgeGroup = SWITCH(
 TRUE(),
 'public cust_detail'[customer_age] < 30, "20-30",
 'public cust_detail'[customer_age] >= 30 && 'public cust_detail'[customer_age] < 40, "30-40",
 'public cust_detail'[customer_age] >= 40 && 'public cust_detail'[customer_age] < 50, "40-50",
 'public cust_detail'[customer_age] >= 50 && 'public cust_detail'[customer_age] < 60, "50-60",
 'public cust_detail'[customer_age] >= 60, "60+",
 "unknown"
 )

(ii) IncomeGroup = SWITCH(
 TRUE(),
 'public cust_detail'[income] < 35000, "Low",
 'public cust_detail'[income] >= 35000 && 'public cust_detail'[income] <70000, "Med",
 'public cust_detail'[income] >= 70000, "High",
 "unknown"
)

(iii) week_num2 = WEEKNUM('public cc_detail'[week_start_date])

(iv) Revenue = 'public cc_detail'[annual_fees] + 'public cc_detail'[total_trans_amt] + 'public cc_detail'[interest_earned]

(iv) Current_week_Reveneue = CALCULATE(
 SUM('public cc_detail'[Revenue]),
 FILTER(
 ALL('public cc_detail'),
 'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2])))

(v) Previous_week_Reveneue = CALCULATE(
 SUM('public cc_detail'[Revenue]),
 FILTER(
 ALL('public cc_detail'),
 'public cc_detail'[week_num2] = MAX('public cc_detail'[week_num2])-1))

**#Dashboard & insights**

Overview YTD:
• Overall revenue is 55M
• Total interest is 8M
• Total transaction amount is 45M
• Male customers are contributing more in revenue 30M, female 25M
• Blue & Silver credit card are contributing to 93% of overall
transactions
• TX, NY & CA is contributing to 68%
• Overall Activation rate is 57.5%
• Overall Delinquent rate is 6.06%
