echo *** Preparing OS ***

echo 'Listing environment variables - these will be used by provisioning scripts'
printenv

echo 'Updating apt sources'
sudo apt-get update

echo 'Deploying missing patches'
sudo apt-get -y upgrade

echo *** Preparing OS - COMPLETE ***