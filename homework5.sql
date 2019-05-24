



SELECT t.user_id, transaction_id, visit_id, transaction_time, visit_time
FROM
(SELECT user_id, visit_id, visit_time,
nvl (LEAD(visit_time,1) OVER (PARTITION BY user_id ORDER by visit_time), '2099-01-01')AS next_visit
FROM sql_masterclass.visits
order by 1,3) as nv
left JOIN
sql_masterclass.transactions t on nv.user_id=t.user_id
WHERE transaction_time > visit_time and transaction_time < next_visit;
