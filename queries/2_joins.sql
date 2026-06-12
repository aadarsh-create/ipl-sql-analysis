USE ipl_analysis;

-- 4. Top 10 Scores Overall

select batter , sum(batsman_runs) as total_runs
from deliveries
group by batter
order by total_runs desc
limit 10;

-- 5. Top 10 Wicket Takers

select bowler , sum(is_wicket) as wickets
from deliveries
group by bowler
order by wickets desc
limit 10;

-- 6. total runs scored per season

select m.season , sum(d.total_runs) as total_runs
from matches m 
join deliveries d
on m.id=d.match_id
group by season;