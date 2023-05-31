# Infrastructure Created with Terraform
Please note that this playbook assumes you have already created the necessary infrastructure using Terraform. Ensure that your EC2 instances are provisioned and accessible via SSH before running the Ansible playboo

# Ansible Playbook: Clone and Copy Files to /var/www/html
This Ansible playbook automates the process of cloning a Git repository and copying files to the /var/www/html directory on the target hosts.

.# Prerequisites
Before running this playbook, make sure you have the following prerequisites:

.# Ansible installed on your system.
Target hosts configured with SSH access and the required permissions.
Usage
Follow the steps below to execute the playbook:

.# Create an inventory file and specify the target hosts. The inventory file should list the hostnames or IP addresses of the target hosts.

.# Create a playbook file with the necessary tasks. The playbook should include the following tasks:

Install the required dependencies (e.g., Git, Nginx) on the target hosts.
Start the Nginx service on the target hosts.
Clone the specified Git repository on the target hosts.
Copy the files from the cloned repository to the /var/www/html directory on the target hosts.
Run the playbook using the ansible-playbook command. Provide the path to the inventory file and playbook file as arguments.
