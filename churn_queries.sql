-- Churn by contract type
select contract, count(*) as customers, sum(churn_value) as churned,
round(100.0 * sum(churn_value)/count(*),1) as churn_pct
from ibm group by contract order by churn_pct desc;

-- Churn by tenure group
select case
when tenuremonths<=12 then '0-12 months'
when tenuremonths<=24 then '13-24 months'
else '25+ months' end as tenure_group,
count(*) as customers,
round(100.0 * sum(churn_value)/count(*),1) as churn_pct
from ibm group by tenure_group order by churn_pct desc;

-- Churn by payment method
select payment_method, count(*) as customers,
round(100.0 * sum(churn_value)/count(*),1) as churn_pct
from ibm group by payment_method order by churn_pct desc;
