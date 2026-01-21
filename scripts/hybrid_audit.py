import os
import platform
import json
import subprocess

def get_platform_info():
    # Detect if running on AWS vs On-Prem
    if os.path.exists('/sys/hypervisor/uuid'):
        return "Cloud-Native (AWS)"
    else:
        # Tries to get hardware model for On-Prem servers
        try:
            cmd = "dmidecode -s system-product-name"
            model = subprocess.check_output(cmd, shell=True).decode().strip()
            return f"On-Premise (HPE - {model})"
        except:
            return "On-Premise (Physical/VM)"

def collect_metrics():
    metrics = {
        "hostname": platform.node(),
        "os_version": platform.platform(),
        "platform": get_platform_info(),
        "cpu_count": os.cpu_count(),
        "load_avg": os.getloadavg()[0]
    }
    return metrics

if __name__ == "__main__":
    data = collect_metrics()
    # Output as JSON for Semaphore/Ansible to consume
    print(json.dumps(data, indent=4))
