import json
import os
import boto3

table = boto3.resource("dynamodb").Table(os.environ["TABLE_NAME"])

def handler(event, context):
    failures = []
    for record in event.get("Records", []):
        try:
            body = json.loads(record["body"])
            table.put_item(Item={"id": str(body.get("id", record["messageId"])), "payload": body})
        except Exception:
            failures.append({"itemIdentifier": record["messageId"]})
    return {"batchItemFailures": failures}
