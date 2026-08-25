select * from youtube
limit 5

--1. Top 10 UK Youtubers by subscribers
select youtuber,subscribers
 from youtube
order by subscribers  desc
limit 10

--2 Top 10 UK Youtubers by Video Views
select youtuber,"video views"
from youtube
order by "video views" desc
limit 10

--3 Top 10 UK Youtubers by Uploads
select youtuber,uploads
from youtube
order by uploads desc
limit 10

--4  Avg Subscribers
select avg(subscribers) as avg_subscribers
from youtube

--5 Avg Views
select avg("video views") as avg_views
from youtube

--6 No of Channels per Category
select category, count(*) as total_channels
from youtube
group by category
order by total_channels desc

--7 Top Categories by Average Subscribers
select category,round(avg(subscribers),0) AS avg_subscribers
from youtube
group by category
order by  avg_subscribers DESC

--8  Top Categories by Total Subscribers
select category,sum(subscribers) as total_subscribers
from youtube
group by category
order by total_subscribers desc
limit 5

--9 Top 5 Channels by Views per Subscriber
select youtuber,round(("video views"*1.0)/subscribers,2) as views_per_subscriber
from youtube
order by views_per_subscriber desc
limit 5

--10 Top 5 Channels by Views per Upload
select youtuber,round(("video views"*1.0)/uploads,2) as views_per_uploads
from youtube
order by views_per_uploads desc
limit 5
