git -C /home/ubuntu/remote_access fetch origin
git -C /home/ubuntu/remote_access log origin -1 > /home/ubuntu/msg.txt
grep '#pattgitmessage' /home/ubuntu/msg.txt > _grep.sh
cat _grep.sh | python3 format.py > code.sh
/home/ubuntu/./code.sh
>/home/ubuntu/remote_access/code.txt
git -C /home/ubuntu/remote_access commit -a -m "code execution complete, log ready"
git -C /home/ubuntu/remote_access push --force
