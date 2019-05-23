SELECT DISTINCT COUNT (e.eventid) as total_events, 
v.venuename, v.venueid,
sum (numtickets) as tickets, sum(qtysold) as sold_tickets, (sum(numtickets)- sum(qtysold)) as total_non_sold_oh 
FROM sql_masterclass.event e
JOIN sql_masterclass.venue v on e.venueid=v.venueid
 JOIN sql_masterclass.listing l on e.eventid=l.eventid
 JOIN sql_masterclass.sales s on l.eventid=s.eventid
WHERE v.venuestate in (SELECT venuestate from sql_masterclass.venue v WHERE venuestate= 'OH')
GROUP by 2,3;
