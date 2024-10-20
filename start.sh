if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sahildesai07/Movie-Provider-bot.git /Movie-Provider-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Provider-bot
fi
cd /Movie-Provider-bot
pip3 install -U -r requirements.txt
echo "Starting Movie-Provider-bot...."
python3 bot.py
