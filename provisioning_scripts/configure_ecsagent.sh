
echo '*** Configuring ECS agent ***'

echo 'Creating /etc/ecs folder'
sudo mkdir -p /etc/ecs

echo 'Enabling the use of 127/8 for local routing purposes'
sudo echo 'net.ipv4.conf.all.route_localnet = 1' >> /etc/sysctl.conf
sudo sysctl -p /etc/sysctl.conf

echo 'Amending iptables'
sudo iptables -t nat -A PREROUTING -p tcp -d 169.254.170.2 --dport 80 -j DNAT --to-destination 127.0.0.1:51679
sudo iptables -t nat -A OUTPUT -d 169.254.170.2 -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 5

echo '*** Configuring ECS agent - COMPLETE ***'