This is first app on docker for me:
voting app, I have copied code from git and rewrite docker file and docker compose and edite onsome files like readme.
# about app:
voting app is simple application with front and database which show page to chose dogs or cats and another page show show result.
use data base and redis caching to save result.
used port 5000 for voting and 5001 for result

# docker compose run -d
to run

# docker compose down -v
to stop and delete all continers
