-- CREATE DATABASE ipl_analysis;
-- USE ipl_analysis;

-- DROP TABLE IF EXISTS deliveries;
-- DROP TABLE IF EXISTS matches;

CREATE TABLE matches (
    id INT PRIMARY KEY,
    season VARCHAR(20),
    city VARCHAR(100),
    date VARCHAR(20),
    match_type VARCHAR(50),
    player_of_match VARCHAR(100),
    venue VARCHAR(150),
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
    toss_decision VARCHAR(20),
    winner VARCHAR(100),
    result VARCHAR(50),
    result_margin VARCHAR(20),
    target_runs VARCHAR(20),
    target_overs VARCHAR(20),
    super_over VARCHAR(10),
    method VARCHAR(50),
    umpire1 VARCHAR(100),
    umpire2 VARCHAR(100)
);

CREATE TABLE deliveries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    inning INT,
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100),
    over_no INT,
    ball INT,
    batter VARCHAR(100),
    bowler VARCHAR(100),
    non_striker VARCHAR(100),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    extras_type VARCHAR(50),
    is_wicket INT,
    player_dismissed VARCHAR(100),
    dismissal_kind VARCHAR(50),
    fielder VARCHAR(100),
    FOREIGN KEY (match_id) REFERENCES matches(id)
);