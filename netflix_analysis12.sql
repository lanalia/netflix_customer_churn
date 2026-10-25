use netflix_analysis;
select*from netflix_churn limit 5;
select count(*) as total_records from netflix_churn;

select subscription_type,count(*)as total_customer,sum(churned=1)as churned_customers,
round(avg(churned=1)*100,2) as churn_rate from netflix_churn
group by subscription_type;

select churned ,(avg(last_login_days) ) as average_tenure from netflix_churn group by churned;

select churned,(round(avg(watch_hours),2)) as average_viewing_hours from netflix_churn
group by churned;

select subscription_type,count(*) as total_customers,sum(churned=1)as churned_customers,round(avg
(churned=1)*100,2) as churn_rate from netflix_churn
group by subscription_type
order by churn_rate desc;


