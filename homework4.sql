SELECT  user_id, user_acquisition_timestamp,transaction_timestamp, 
DATEDIFF(DAY, user_acquisition_timestamp, transaction_timestamp)as dias_dif
FROM
(SELECT user_id, user_acquisition_timestamp, transaction_timestamp
from tangarana.payment_transactions
WHERE user_acquisition_timestamp >'2017-01-01 00:00:.000') AS TABLA1
WHERE dias_dif<=30
order by 1,3;
