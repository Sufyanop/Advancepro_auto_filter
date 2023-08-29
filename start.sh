if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone Sufyanop/Advancepro_auto_filter /Sufyanop/Advancepro_auto_filter
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advancepro_auto_filter
fi
cd /Advancepro_auto_filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
