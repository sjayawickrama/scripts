
g=/tmp/bootstrap.log
echo "[info]:changing the root password" >> $log
echo "root@123" | passwd --stdin root
echo "[info]:Changing the root password is completed" >> $log
echo "[info]:Configuring sshd to permit root login" >> $log
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
echo "[info]:Configuring sshd to permit root login is completed" >> $log


echo "[info]:Configuring sshd to permit password base authentication" >> $log

sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
echo "[info]:Configuring sshd to permit password base authentication is completed" >> $log
echo "[info]:Making the change effect by restarting the service" >> $log
systemctl restart sshd.service
if yum install git -y
then
	        	echo "[info] : git is succesfully installed" >> $log
	else
		        echo " [error] :git is not installed" >> $log
fi

	git --version >> $log
	if sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
		then
	                echo "[info] jekin repo is succesfully setuped" >> $log
		 else
		        echo " [error]jenkin repo is not setuped" >> $log
		 fi
		
		 sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

		 if yum install jenkins -y

		 then

			 echo "[info]: jenkin is successfully installed" >> $log

		 else

			 echo "[error]: jenkin is not installed" >> $log

		 fi
																								
