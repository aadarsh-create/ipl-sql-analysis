USE ipl_analysis;

-- 1. Total matches per season

select season , count(season)
from matches
group by season
order by season asc;

-- 2. Most Successfull Team by Wins

select winner as team, count(winner) as wins
from matches
group by team
order by wins desc;

-- 3. Toss Winner Also Won The Match

select toss_winner as team , count(toss_winner) as wins
from matches
where toss_winner = winner
group by team
order by wins desc;