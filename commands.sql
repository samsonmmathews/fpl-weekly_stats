-- Create table teams
CREATE TABLE teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    stadium VARCHAR(100),
    manager_name VARCHAR(50)
);

-- Create table players
CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    position ENUM('GK', 'DEF', 'MID', 'FWD') NOT NULL,
    price DECIMAL(5,2),
    points INT,
    fk_team INT,
    FOREIGN KEY (fk_team) REFERENCES teams(team_id)
);

-- Create table players
CREATE TABLE gameweeks (
    gameweek_id INT AUTO_INCREMENT PRIMARY KEY,
    week_number INT NOT NULL,
    player_id INT NOT NULL,
    points INT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Insert into table 'teams'
INSERT INTO teams (team_name, stadium, manager_name) VALUES
('Arsenal', 'Emirates Stadium', 'Mikel Arteta'),
('Aston Villa', 'Villa Park', 'Unai Emery'),
('AFC Bournemouth', 'Dean Court', 'Andoni Iraola'),
('Brentford', 'Brentford Community Stadium', 'Keith Andrews'),
('Brighton & Hove Albion', 'Falmer Stadium', 'Fabian Hürzeler'),
('Burnley', 'Turf Moor', 'Scott Parker'),
('Chelsea', 'Stamford Bridge', 'Enzo Maresca'),
('Crystal Palace', 'Selhurst Park', 'Oliver Glasner'),
('Everton', 'Hill Dickinson Stadium', 'David Moyes'),
('Fulham', 'Craven Cottage', 'Marco Silva'),
('Leeds United', 'Elland Road', 'Daniel Farke'),
('Liverpool', 'Anfield', 'Arne Slot'),
('Manchester City', 'Etihad Stadium', 'Pep Guardiola'),
('Manchester United', 'Old Trafford', 'Ruben Amorim'),
('Newcastle United', 'St James Park', 'Eddie Howe'),
('Nottingham Forest', 'City Ground', 'Ange Postecoglou'),
('Sunderland', 'Stadium of Light', 'Régis Le Bris'),
('Tottenham Hotspur', 'Tottenham Hotspur Stadium', 'Thomas Frank'),
('West Ham United', 'London Stadium', 'Nuno Espírito Santo'),
('Wolverhampton Wanderers', 'Molineux Stadium', 'Vitor Pereira');

-- Insert into table 'players'
INSERT INTO players (full_name, position, price, points, fk_team) VALUES
('Senne Lammens', 'GK', 4.5, 9, 14),
('Jurrien Timber', 'DEF', 5.8, 12, 1),
('Dan Burn', 'DEF', 4.3, 11, 15),
('Jan Paul van Hecke', 'DEF', 4.5, 11, 5),
('Antoine Semenyo', 'MID', 4.9, 20, 3),
('Mohammed Kudus', 'MID', 6.3, 12, 18),
('Declan Rice', 'MID', 5.9, 11, 1),
('Donyell Malen', 'FWD', 2.3, 16, 2),
('Benjamin Šeško', 'FWD', 6.5, 9, 14);