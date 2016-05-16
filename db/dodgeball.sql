DROP TABLE teams;
DROP TABLE matches;

CREATE TABLE teams (
  id serial4 primary key,
  team_name VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE matches (
  id serial4 primary key,
  home_team_score INT4,
  away_team_score INT4,
  away_id INT4 REFERENCES teams(id),
  home_id INT4 REFERENCES teams(id),
);