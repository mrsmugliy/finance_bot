Telegram bot for tracking personal expenses and budgeting.


In the environment variable, you must set the bot's API token.

`TELEGRAM_API_TOKEN` — BOT TOKEN HERE


Usage with Docker is shown below. Pre-fill the ENV variables mentioned above in the Dockerfile, and also in the start command specify the local directory with the project instead of `local_project_path`. The SQLite database will be located in the project folder `db / finance.db`.

```
docker build -t tgfinance ./
docker run -d --name tg -v /local_project_path/db:/home/db tgfinance
```


