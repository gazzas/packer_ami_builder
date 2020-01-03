echo '*** Deploying CloudWatch agent ***'

echo 'Downloading CloudWatch agent to $DEPLOYMENT_ENGINE_LOCATION'
cd $DEPLOYMENT_ENGINE_LOCATION
sudo wget -q https://s3.amazonaws.com/amazoncloudwatch-agent/debian/amd64/latest/amazon-cloudwatch-agent.deb

echo 'Deploying CloudWatch agent'
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb

echo '*** Deploying CloudWatch agent - COMPLETE ***'