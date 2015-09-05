# Nginx docker image with Consul

this docker image use consul-template to monitor changes to consul services.  it'll update nginx configuration and restart nginx.

app started at node1 listening to port 9600, can be accessed directly with https://node1:9600/api.  going through nginx, the url would be https://nginx/app/api/.


