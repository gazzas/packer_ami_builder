echo '*** Deploying ECS agent ***'
echo 'Downloading latest ECS agent container to $DEPLOYMENT_ENGINE_LOCATION'
cd $DEPLOYMENT_ENGINE_LOCATION
sudo curl -sSL -o ecs-agent.tar http://s3.amazonaws.com/amazon-ecs-agent-us-east-1/ecs-agent-latest.tar

echo 'Importing ECS agent container'
sudo docker load --input ./ecs-agent.tar

echo '*** Deploying ECS agent ***'