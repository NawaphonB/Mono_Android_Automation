import requests
import os
import xml.etree.ElementTree as ET

webhook_url = os.getenv("WEBHOOK_URL")

RESULT_PATH = "results/output.xml"

def generate_summary():
    if not os.path.exists(RESULT_PATH):
        return "❌ No output.xml found. Test execution may have crashed."

    tree = ET.parse(RESULT_PATH)
    root = tree.getroot()

    total = 0
    passed = 0
    failed = 0
    failed_tests = []

    for test in root.iter("test"):
        total += 1
        status = test.find("status").attrib["status"]
        name = test.attrib["name"]

        if status == "PASS":
            passed += 1
        else:
            failed += 1
            failed_tests.append(name)

    status_emoji = "✅" if failed == 0 else "❌"

    message = (
        f"{status_emoji} Weekly Mobile Automation Result\n\n"
        f"Total: {total}\n"
        f"Passed: {passed}\n"
        f"Failed: {failed}\n\n"
    )

    if failed_tests:
        message += "Failed Testcases:\n"
        for test in failed_tests:
            message += f"- {test}\n"

    return message


if webhook_url:
    summary_text = generate_summary()
    payload = {
        "text": summary_text
    }
    requests.post(webhook_url, json=payload)
else:
    print("WEBHOOK_URL not set")