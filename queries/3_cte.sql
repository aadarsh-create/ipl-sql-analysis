-- 7. Top 5 Batsmam

with batter_runs as (
	select batter, sum(batsman_runs) as total_runs
    from deliveries
    group by batter
)
select * from batter_runs
order by total_runs desc
limit 5;

-- 8. Teams With Above Average Wins

with winning_teams as (
	select winner as teams , count(winner) as wins
	from matches
	group by winner
),
average_wins as (
	select avg(wins) as avg_win
    from winning_teams
)
select w.teams,w.wins
from winning_teams as w,average_wins a
where w.wins >= a.avg_win
order by w.wins desc;

-- 9. Most Player Of The Match

with player_awards as(
	select player_of_match as player,count(player_of_match) as awards
    from matches
    group by player
)
select * from player_awards
order by awards desc
limit 10;