import requests
import os
import xml.etree.ElementTree as ET
import json
import sys

webhook_url = os.environ.get("WEBHOOK_URL")

if not webhook_url:
    print("❌ Error: WEBHOOK_URL environment variable is missing!")
    sys.exit(1)

output_file = "results/output.xml" 

if not os.path.exists(output_file):
    print(f"❌ Error: Cannot find {output_file}")
    sys.exit(1)

tree = ET.parse(output_file)
root = tree.getroot()

fail_count = 0
total_count = 0
failed_tests = []

for test in root.findall(".//test"):
    total_count += 1
    test_name = test.attrib.get("name", "Unnamed Test")
    status_tag = test.find("./status")
    
    if status_tag is not None and status_tag.attrib.get("status") == "FAIL":
        fail_count += 1
        error_msg = status_tag.text.strip() if status_tag.text else "Unknown error"
        
        keyword_errors = []
        for kw in test.findall(".//kw"):
            kw_status = kw.find("./status")
            if kw_status is not None and kw_status.attrib.get("status") == "FAIL":
                kw_name = kw.attrib.get("name", "Unknown Keyword")
                kw_error = kw_status.text.strip() if kw_status.text else "Keyword error"
                keyword_errors.append(f"🔴 {kw_name}: {kw_error}")
                
        failed_tests.append({
            "name": test_name,
            "error": error_msg,
            "keyword_errors": keyword_errors
        })

if fail_count > 0:
    failed_details = []
    for test in failed_tests:
        test_info = f"📌 *{test['name']}*\n"
        test_info += f"   • Error: {test['error']}\n"
        if test['keyword_errors']:
            test_info += "   • Keyword Errors:\n"
            for kw_error in test['keyword_errors']:
                test_info += f"     {kw_error}\n"
        failed_details.append(test_info)
    
    failed_list = "\n".join(failed_details)
    
    message = {
        "text": f"🚨 *Health Check Alert!*\n❌ {fail_count} test(s) failed out of {total_count}\n\n{failed_list}"
    }
    
    try:
        response = requests.post(
            webhook_url, 
            data=json.dumps(message), 
            headers={'Content-Type': 'application/json'}
        )
        response.raise_for_status()
        print("✅ Alert sent to webhook successfully!")
    except requests.exceptions.RequestException as e:
        print(f"❌ Failed to send alert: {e}")
else:
    print(f"✅ All {total_count} tests passed. No alert sent.")