# Lab 01 — Private S3 + CloudFront

Build a private S3 origin and serve it through CloudFront using Origin Access Control (OAC). The bucket must not be publicly readable.

## Run

1. terraform init
2. terraform fmt -recursive
3. terraform validate
4. terraform plan
5. Apply only in a sandbox AWS account.
6. Upload an index.html object to the bucket.
7. Open the CloudFront hostname and verify HTTPS delivery.

## Failure drills

- Remove the bucket policy and diagnose the CloudFront 403.
- Compare CloudFront + S3 with ALB + EC2.

## Cleanup

Confirm the bucket is empty, then run terraform destroy.