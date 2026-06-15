# DevOps Projects

This repository showcases my DevOps learning journey and mini projects.

## Projects
- **AWS Resource Reporter**: A shell script that automates reporting of EC2, S3, Lambda, and IAM resources.
- **Ansible Multiple Role Automation**: A full working Ansible playbook with roles and tasks assigned accordingly along with site.yml and inventory file
- More Projects Coming Soon......
-----------------------------------------------------------------------------------------------------------------------------------------------------
## AWS Resource Tracker
A shell script that automates reporting of AWS resources:
- EC2 Instances
- S3 Buckets
- Lambda Functions
- IAM Users

### How to Run
```bash
chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh
-----------------------------------------------------------------------------------------------------------------------------------------------------

## Ansible Multi‑Role Automation
An Ansible project designed to automate server setup and configuration using modular roles:

-Inventory
Defines host groups (webservers, dbserver, etc.) and their IPs.

Ensures tasks are targeted to the correct servers.

-Roles
#common: Installs base packages (curl, git, vim) and prepares the environment.

#nginx: Installs and configures Nginx web server, ensures service is enabled.

#mysql: Installs MySQL, starts the service. (Root password/DB/user tasks were attempted but later scoped down for stability.)

#users: Creates and manages system users with proper permissions.

#monitoring: Sets up basic monitoring tools to track server health.

#keepalive: Sets keepalive intervals to target servers

Each role has its own tasks/, handlers/, and defaults/ directories, following Ansible best practices.

-site.yml
The master playbook that ties all roles together.

Runs common on all servers, nginx on webservers, mysql on dbserver, and applies users, monitoring, and security roles across the environment.

Provides a single command to configure multiple servers consistently: ansible-playbook -i inventory site.yml
----------------------------------------------------------------------------------------------------------------------------------------------------
