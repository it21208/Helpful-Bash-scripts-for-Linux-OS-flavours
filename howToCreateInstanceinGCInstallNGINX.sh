# Install an NGINX web server.
sudo su -
apt-get update
apt-get install nginx -y

# confirm NGINX is running
ps auwx | grep nginx

# Create a new instance with gcloud.
gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone us-central1-c
gcloud compute instances create --help
gcloud compute ssh gcelab2 --zone us-central1-c
