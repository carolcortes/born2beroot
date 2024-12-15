# Born2BeRoot 🖥️
A guide for the Born2BeRoot project at 42. It includes instructions for setting up the environment, documenting the steps, and resolving common issues.
> This project almost cost me my sanity.

In this project, we created a virtual machine that simulates a secure Linux server environment configured with essential services, using ```Debian``` as the operating system.

## 🚧 IN PROGRESS 🚧
As this project required an extensive amount of debugging (and I don’t want to talk about it for a while), creating the correct partitions, and making the script work, I will complete this guide later. For now, I’m providing only the instructions for proper partitioning and running the script.

### Partitioning with Bonus:
You need to create the VM with 30.8GB of storage and partition it as follows:

![image](https://github.com/user-attachments/assets/41b5ae6e-b3cd-4f1d-9a12-53bf70ec3fc8)

![image](https://github.com/user-attachments/assets/59a81b58-e575-4904-ac2f-f07f66bbcafe)

sda1: /boot → 525.336576M

sda5: max

root → 10737418240b

swap → 2469607424b

home → 5368709120b

var → 3221225472b

srv → 3221225472b

tmp → 3221225472b

var-log → 4290mb (resto)

### About the scripts:

I created two scripts: one with a delay timer and another for the main functionality.
- When required to run every 10 minutes after boot, I use crontab to execute monitoring_cron.sh.
- When required to run every minute, I execute monitoring.sh without the delay timer.

Both scripts are included in this repository.
