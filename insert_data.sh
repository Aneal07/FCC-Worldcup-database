#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
    if [[ $YEAR != "year" ]]; then
        # Check if the team already exists in the teams table
        WINNER_EXIST=$($PSQL "SELECT COUNT(*) FROM teams WHERE name='$WINNER'")
        OPPONENT_EXIST=$($PSQL "SELECT COUNT(*) FROM teams WHERE name='$OPPONENT'")

        # If the team does not exist, insert it into the teams table
        if [[ $WINNER_EXIST -eq 0 ]]; then
            $PSQL "INSERT INTO teams(name) VALUES ('$WINNER')"
        fi

        if [[ $OPPONENT_EXIST -eq 0 ]]; then
            $PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')"
        fi

        # Insert the game into the games table
        $PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) VALUES ((SELECT team_id FROM teams WHERE name='$WINNER'), (SELECT team_id FROM teams WHERE name='$OPPONENT'), $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')"
    fi
done
