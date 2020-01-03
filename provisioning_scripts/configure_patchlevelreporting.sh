echo '*** Configuring Patching level reporting ***'

echo "Copying reporting script from $DEPLOYMENT_ENGINE_LOCATION/report_missing_patches.sh  to /home/custom/scripts/report_missing_patches.sh"
sudo mkdir -p '/home/custom/scripts/'
sudo cp $DEPLOYMENT_ENGINE_LOCATION/custom_scripts/report_missing_patches.sh /home/custom/scripts/report_missing_patches.sh
sudo chmod +x /home/custom/scripts/report_missing_patches.sh

echo 'Setting cron job to trigger report_missing_patches.sh at every second hour (random minute)'
sudo crontab -l > cronjoblist
sudo echo "$((1 + RANDOM % 59)) */2 * * * /home/custom/scripts/report_missing_patches.sh >/dev/null 2>&1" >> cronjoblist
sudo crontab cronjoblist
sudo rm cronjoblist

echo '*** Configuring Patching level reporting - COMPLETE ***'
