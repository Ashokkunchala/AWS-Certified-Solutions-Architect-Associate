import json
import os
import boto3

table = boto3.resource("dynamodb").Table(os.environ["TABLE_NAME"])

def handler(event, context):
    item_id = event.get("pathParameters", {}).get("id", "demo")
    method = event.get("requestContext", {}).get("http", {}).get("method", "GET")
    if method == "GET":
        item = table.get_item(Key={"id": item_id}).get("Item", {"id": item_id})
        return {"statusCode": 200, "body": json.dumps(item)}
    if method == "DELETE":
        table.delete_item(Key={"id": item_id})
        return {"statusCode": 204, "body": ""}
    body = json.loads(event.get("body") or "{}")
    body["id"] = item_id
    table.put_item(Item=body)
    return {"statusCode": 200, "body": json.dumps(body)}
