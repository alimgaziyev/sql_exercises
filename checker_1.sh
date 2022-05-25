#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color
STUDENT_SOLUTION_PATH="/home/alimgaziyev.serzhan/sql_exercises/sql-requests"
CORRECT_SOLUTION_PATH="/home/alimgaziyev.serzhan/sql_exercises/solutions_1/solutions"
DATABASE_PATH="/home/alimgaziyev.serzhan/sql_exercises/database/database.sqlite"

help()
{
   echo "SQL project checker."
   echo
   echo "Usage: $0 [-s <student solution directory path>] [-c <correct solution directory path>] [-d <database path>]"
}

validate()
{
    # $1 student soltuion path
    # $2 correct solution path
    # $3 database path
    echo "Results: "
    for i in $(seq -w 24 ); do
        val1=$(sqlite3 $3 < $1/ex_$i.sql)
        val2=$(sqlite3 $3 < $2/ex_$i.sql)
        if [ "$val1" == "$val2" ]; then
            echo "ex_$i: ✅"
        else
            echo "ex_$i: ⛔️"
            diff <(echo "$val1") <(echo "$val2")
            printf "${RED}test ex_$i failed${NC}\n"
            exit 1
        fi
    done
}

while getopts ":h:s:c:d:" option; do
   case $option in
        s)
            STUDENT_SOLUTION_PATH=${OPTARG}
            ;;
        c)
            CORRECT_SOLUTION_PATH=${OPTARG}
            ;;
        d)
            DATABASE_PATH=${OPTARG}
            ;;
        *)
            help
            exit;;
   esac
done

if [ -z "$CORRECT_SOLUTION_PATH" ]
then
      echo "Error: correct solution path is empty"
      exit 1
elif [ -z "$STUDENT_SOLUTION_PATH" ]
then
      echo "Error: student solution path is empty"
      exit 1
elif [ -z "$DATABASE_PATH" ]
then
      echo "Error: database path is empty"
      exit 1
fi

[ ! -d "$CORRECT_SOLUTION_PATH" ] && echo "Correct solution folder: $CORRECT_SOLUTION_PATH does not exists." && exit 1
[ ! -d "$STUDENT_SOLUTION_PATH" ] && echo "Student solution folder: $STUDENT_SOLUTION_PATH does not exists." && exit 1
[ ! -f "$DATABASE_PATH" ] && echo "Database file: $DATABASE_PATH does not exists." && exit 1

validate $STUDENT_SOLUTION_PATH $CORRECT_SOLUTION_PATH $DATABASE_PATH

