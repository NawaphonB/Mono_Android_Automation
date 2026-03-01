import requests
import os

webhook_url = os.getenv("WEBHOOK_URL")
status = os.getenv("TEST_STATUS", "UNKNOWN")

payload = {
    "text": f"Weekly Mobile Automation Result: {status}"
}

if webhook_url:
    requests.post(webhook_url, json=payload)