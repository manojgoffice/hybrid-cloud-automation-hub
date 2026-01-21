import subprocess
import json
import sys

def get_docker_metrics():
    try:
        # Get stats in JSON-like format
        cmd = "docker stats --no-stream --format '{{json .}}'"
        output = subprocess.check_output(cmd, shell=True).decode().splitlines()
        
        stats = [json.loads(line) for line in output]
        unhealthy_containers = []

        for container in stats:
            # Logic: Alert if memory usage is > 80% (Simplified for demo)
            if float(container['MemPerc'].strip('%')) > 80.0:
                unhealthy_containers.append(container['Name'])

        return {
            "total_containers": len(stats),
            "high_utilization_nodes": unhealthy_containers,
            "status": "Warning" if unhealthy_containers else "Healthy"
        }
    except Exception as e:
        return {"status": "Error", "message": str(e)}

if __name__ == "__main__":
    result = get_docker_metrics()
    print(json.dumps(result, indent=4))
