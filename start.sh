if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SachuSer10/mfnewrepo /mfnewrepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mfnewrepo
fi
cd /mfnewrepo
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
