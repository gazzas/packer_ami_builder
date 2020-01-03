echo '*** Configuring CloudWatch agent ***'

echo "Copying CloudWatch agent config from $DEPLOYMENT_ENGINE_LOCATION/custom_configs/cwagent_config_$ROLE_NAME.json to /opt/aws/amazon-cloudwatch-agent/bin/config.json"
sudo cp -rf $DEPLOYMENT_ENGINE_LOCATION/custom_configs/cwagent_config_$ROLE_NAME.json /opt/aws/amazon-cloudwatch-agent/bin/config.json

echo 'Starting CloudWatch agent for a firtst time'
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s

echo '*** Configuring CloudWatch agent - COMPLETE ***'