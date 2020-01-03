echo '*** Deploying Docker***'

echo 'Installing packages required to download docker engine'
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

echo 'Adding docker GPG key'
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo 'Adding key fingerprint'
sudo apt-key fingerprint 0EBFCD88

echo 'Adding docker repository'
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

echo 'Updating apt sources'
sudo apt-get update

echo 'Installing docker CE'
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo '*** Deploying Docker - COMPLETE***'