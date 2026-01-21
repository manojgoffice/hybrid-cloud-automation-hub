### 🎡 Semaphore Task: Automated Container Remediation
This template ensures zero-downtime for containerized services across AWS and local HPE clusters.

| Feature | Configuration |
| :--- | :--- |
| **Schedule** | Every 5 Minutes (`*/5 * * * *`) |
| **Task** | `scripts/docker_health_monitor.sh` |
| **Target** | All Docker-enabled nodes (Hybrid Inventory) |
| **Failure Alert** | Webhook to Slack/Teams (If a container fails to restart) |

**Key Professional Benefit:** "By moving the watchdog logic to Semaphore, I created a centralized audit trail. Unlike local 'restart: always' policies, Semaphore logs provide data on *why* and *when* containers are failing, enabling root-cause analysis."
