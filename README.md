# Problem Statement 1
Title: Containerisation and Deployment of Wisecow Application on Kubernetes

The Expected are facts are under K8s, wisecow.

The K8s directory contains K8 manifest files which is for the service and the deployment.

The wisecow directory is the source code.

The Dockerfile is present on the same path of K8s and wisecow directories.

The GitHub actions workflow file is present at : https://github.com/SimranjeetAtwal/K8-App/actions/runs/9609123847/workflow

#

# Problem Statement 2
1. System Health Monitoring Script:
Develop a script that monitors the health of a Linux system. It should check
CPU usage, memory usage, disk space, and running processes. If any of
these metrics exceed predefined thresholds (e.g., CPU usage > 80%), the
script should send an alert to the console or a log file.

   For the above problem statement the file is under Scripts directory and the file name is **system_health_monitoring.sh**

   To Run the file simply execute it as : sh system_health_monitoring.sh

2. Automated Backup Solution:
Write a script to automate the backup of a specified directory to a remote
server or a cloud storage solution. The script should provide a report on the
success or failure of the backup operation.

   For the above problem statement the file is under Scripts directory and the file name is **automated_backup_solution.sh**

   To Run the file simply execute it as : sh automated_backup_solution.sh

   It will prompt for user inputs such as the user@remote-server-name, here user is the username of the remote system and remote-server-name can be the extrenal ip or the hostname.

   Then it will prompt for the password of the system.
