-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-03-30 15:19:16.608

-- tables
-- Table: League
CREATE TABLE League (
    l_name varchar(50) NOT NULL,
    Division varchar(50) NOT NULL,
    l_id int NOT NULL,
    CONSTRAINT League_pk PRIMARY KEY (l_id)
);

-- Table: Players
CREATE TABLE Players (
    p_id int NOT NULL,
    p_name varchar(50) NOT NULL,
    Team_t_id int NOT NULL,
    Team_t_name varchar(50) NOT NULL,
    CONSTRAINT Players_pk PRIMARY KEY (p_id,p_name)
);

-- Table: Team
CREATE TABLE Team (
    t_id int NOT NULL,
    t_name varchar(50) NOT NULL,
    League_l_id int NOT NULL,
    CONSTRAINT Team_pk PRIMARY KEY (t_id,t_name)
);

-- Table: defensive
CREATE TABLE defensive (
    d_role varchar(2) NOT NULL,
    innings decimal(2,2) NOT NULL,
    games int NOT NULL,
    era decimal(4,4) NOT NULL,
    Players_p_id int NOT NULL,
    Players_p_name varchar(50) NOT NULL,
    CONSTRAINT defensive_pk PRIMARY KEY (Players_p_id,Players_p_name)
);

-- Table: offensive
CREATE TABLE offensive (
    o_role varchar(2) NOT NULL,
    games int NOT NULL,
    batting_avg decimal(3,3) NOT NULL,
    hr int NOT NULL,
    on_base decimal(3,3) NOT NULL,
    slg decimal(3,3) NOT NULL,
    ops decimal(4,4) NOT NULL,
    Players_p_id int NOT NULL,
    Players_p_name varchar(50) NOT NULL,
    CONSTRAINT o_role PRIMARY KEY (Players_p_id,Players_p_name)
);

-- foreign keys
-- Reference: Players_Team (table: Players)
ALTER TABLE Players ADD CONSTRAINT Players_Team FOREIGN KEY Players_Team (Team_t_id,Team_t_name)
    REFERENCES Team (t_id,t_name);

-- Reference: Team_League (table: Team)
ALTER TABLE Team ADD CONSTRAINT Team_League FOREIGN KEY Team_League (League_l_id)
    REFERENCES League (l_id);

-- Reference: defensive_Players (table: defensive)
ALTER TABLE defensive ADD CONSTRAINT defensive_Players FOREIGN KEY defensive_Players (Players_p_id,Players_p_name)
    REFERENCES Players (p_id,p_name);

-- Reference: offensive_Players (table: offensive)
ALTER TABLE offensive ADD CONSTRAINT offensive_Players FOREIGN KEY offensive_Players (Players_p_id,Players_p_name)
    REFERENCES Players (p_id,p_name);

-- End of file.

