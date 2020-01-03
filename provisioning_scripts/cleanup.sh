echo '*** Build engine cleanup ***'

echo 'Removing no longer required packages'
sudo apt -y autoremove

echo 'Cleaning up deployment engine files'
echo "Removing folder $DEPLOYMENT_ENGINE_LOCATION"
sudo rm -rf $DEPLOYMENT_ENGINE_LOCATION

echo '*** Build engine cleanup - COMPLETE***'