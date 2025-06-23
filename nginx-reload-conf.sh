#!/bin/bash
sudo docker exec zhm-nginx-1 /usr/sbin/nginx -t
if [ $? -eq 0 ]; then
    sudo docker exec zhm-nginx-1 /usr/sbin/nginx -s reload
    echo "Nginx configuration reloaded successfully."
else
    echo "Nginx configuration test failed. Please check your configuration."
fi

