#Telco Customer Churn Analysis

**Tools:** PostgreSQL, SQL

**Dataset:** IBM Telco Customer Churn (7,043 customers, 33 columns)

## Business question
Which customers are most likely to leave, and why?

## Data cleaning
- Total Charges had 11 whitespace-only values (new customers with 0 tenure). Converted them to NULL and cast the column to numeric.
- Churn Reason is empty for customers who stayed, which is expected.

## Key findings
1. Overall churn is 26.5% (1,869 of 7,043 customers).
2. Month-to-month contracts churn at 42.7%, versus 11.3% on one-year and 2.8% on two-year contracts.
3. Customers in their first 12 months churn the most: 47.4%
4. Customers paying by electronic check churn at 45.3%, versus 15-19% for all other payment methods.

## Recommendation
Focus retention offers on new customers, and encourage a move to longer contracts.
