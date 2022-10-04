if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SachuSer10/reponewtest /reponewtest
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /reponewtest 
fi
cd /reponewtest 
pip3 install -U -r requirements.txt
echo "Starting Bee Pathu...."
python3 bot.py
