CREATE OR REPLACE TABLE Games (
    game_id INT AUTO_INCREMENT,
    start_date DATE,
    number_of_players INT,
    size_of_base INT,
    PRIMARY KEY (game_id)
);

CREATE OR REPLACE TABLE Moves (
    move_id INT AUTO_INCREMENT,
    game_id INT,
    I_origin INT,
    J_origin INT,
    I_destination INT,
    J_destination INT,
    PRIMARY KEY (move_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);