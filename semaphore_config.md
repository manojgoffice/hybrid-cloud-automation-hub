### 🎡 Semaphore Task Template: Monthly Patching & Compliance
**Objective:** Standardize OS updates across 200+ Hybrid Nodes.

| Field | Configuration |
| :--- | :--- |
| **Playbook** | `ansible/playbooks/prod_patching.yml` |
| **Inventory** | `Hybrid_Inventory` (AWS + On-Prem) |
| **Environment** | `Production_Vars` (Injects Secure API Keys) |
| **Cron Schedule** | `0 0 1 * *` (Runs 1st of every month at midnight) |
| **Arguments** | `--extra-vars "target=all" --diff` |
