# hybrid-cloud-automation-hub
Automated Infrastructure Provisioning (Terraform) and Configuration Management (Ansible) for AWS and Hybrid environments
## 📊 Automation Impact (Measured Results)
| Metric | Manual Process (Before) | Automated (Via Semaphore) |
| :--- | :--- | :--- |
| **Patching Time** | 4-6 Hours per Server | **15 Minutes (All Servers)** |
| **Error Rate** | ~15% (Human Error) | **< 1% (Standardized)** |
| **Reporting** | Manual Excel Logs | **Real-time Semaphore Logs** |
| **Compliance** | Monthly Checks | **Daily Automated Scans** |


Managed Access Control via Semaphore:
Owners (Admins): Full access to Key Store and Cloud Credentials.
Managers: Can create/edit Task Templates and Inventories.
Task Runners (L1 Support): Can trigger "Patching" or "Reboot" tasks but cannot view or edit the underlying code/secrets.
Guests: View logs for audit and compliance purposes only.
